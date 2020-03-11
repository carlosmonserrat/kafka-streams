const kafka = require('kafka-node');

const kafkaClient = new kafka.KafkaClient({kafkaHost: 'localhost:9092'});
const kafkaProducer = new kafka.Producer(kafkaClient);
kafkaProducer.on('ready', () => {
    console.log('ready');
}).on('error', (err) => {
    console.error(err);
});

let i = 0;
setInterval(() => {
    i += 1;
    kafkaProducer.send([{
        topic: 'abcd',
        messages: [`abcd ${i}`],
    }], (error, data) => {
        console.log(error, data);
    });
}, 1000);