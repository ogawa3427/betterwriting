import paho.mqtt.client as mqtt

def on_message(client, userdata, message):
    print("MQTT message received: {}".format(message.payload.decode()))

def mqtt_subscriber():
    svname = "localhost"  # MQTTサーバーのホスト名
    topic = "your_topic"  # メッセージを受信するMQTTトピック名

    client = mqtt.Client()
    client.on_message = on_message
    client.connect(svname, 1883, 60)
    client.subscribe(topic)
    client.loop_forever()

def input_reader():
    user_input = input("Please enter something: ")
    print("You entered:", user_input)

def main():
    print("Waiting for MQTT message or input...")

    mqtt_subscriber()
    input_reader()

    print("Exiting...")

if __name__ == "__main__":
    main()
