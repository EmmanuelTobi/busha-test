class BushaTestModel {
  List<CryptoTransactions> cryptoTransactions;

  BushaTestModel({this.cryptoTransactions});

  BushaTestModel.fromJson(Map<String, dynamic> json) {
    if (json['crypto_transactions'] != null) {
      cryptoTransactions = new List<CryptoTransactions>();
      json['crypto_transactions'].forEach((v) {
        cryptoTransactions.add(new CryptoTransactions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cryptoTransactions != null) {
      data['crypto_transactions'] =
          this.cryptoTransactions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CryptoTransactions {
  String day;
  List<Transactions> transactions;

  CryptoTransactions({this.day, this.transactions});

  CryptoTransactions.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    if (json['transactions'] != null) {
      transactions = new List<Transactions>();
      json['transactions'].forEach((v) {
        transactions.add(new Transactions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    if (this.transactions != null) {
      data['transactions'] = this.transactions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Transactions {
  String image;
  double cryptoAmount;
  String transactionTime;
  String transactionMessage;
  String transactionId;

  Transactions(
      {this.image,
        this.cryptoAmount,
        this.transactionTime,
        this.transactionMessage,
        this.transactionId});

  Transactions.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    cryptoAmount = json['crypto_amount'];
    transactionTime = json['transaction_time'];
    transactionMessage = json['transaction_message'];
    transactionId = json['transaction_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['crypto_amount'] = this.cryptoAmount;
    data['transaction_time'] = this.transactionTime;
    data['transaction_message'] = this.transactionMessage;
    data['transaction_id'] = this.transactionId;
    return data;
  }
}