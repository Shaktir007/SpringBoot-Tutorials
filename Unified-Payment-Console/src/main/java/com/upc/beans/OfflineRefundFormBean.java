package com.upc.beans;

public class OfflineRefundFormBean {

	private String merchant_code = "";
	private String transaction_id = "";
	private String refund_amount="";

	public String getMerchant_code() {
		return merchant_code;
	}

	public void setMerchant_code(String merchant_code) {
		this.merchant_code = merchant_code;
	}

	public String getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}

	public String getRefund_amount() {
		return refund_amount;
	}

	public void setRefund_amount(String refund_amount) {
		this.refund_amount = refund_amount;
	}

	@Override
	public String toString() {
		return "OfflineRefundFormBean [merchant_code=" + merchant_code + ", transaction_id=" + transaction_id
				+ ", refund_amount=" + refund_amount + "]";
	}


}
