import {
  EC2Client,
  StartInstancesCommand,
  StopInstancesCommand,
} from "@aws-sdk/client-ec2";

const ec2 = new EC2Client({});

/**
 * event example:
 * {
 *   "action": "start" | "stop",
 *   "instanceIds": ["i-0123456789abcdef0"]
 * }
 */
export const handler = async (event) => {
  const { action, instanceIds } = event;

  if (!action || !instanceIds || instanceIds.length === 0) {
    return {
      statusCode: 400,
      body: JSON.stringify({
        message: "action (start|stop) và instanceIds là bắt buộc",
      }),
    };
  }

  try {
    let command;

    if (action === "start") {
      command = new StartInstancesCommand({
        InstanceIds: instanceIds,
      });
    } else if (action === "stop") {
      command = new StopInstancesCommand({
        InstanceIds: instanceIds,
      });
    } else {
      return {
        statusCode: 400,
        body: JSON.stringify({ message: "action không hợp lệ" }),
      };
    }

    const result = await ec2.send(command);

    return {
      statusCode: 200,
      body: JSON.stringify({
        action,
        instanceIds,
        result,
      }),
    };
  } catch (error) {
    console.error("EC2 error:", error);

    return {
      statusCode: 500,
      body: JSON.stringify({
        message: "EC2 operation failed",
        error: error.message,
      }),
    };
  }
};
