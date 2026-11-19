package com.sightcall.universal.agent;

/* JADX INFO: loaded from: classes3.dex */
public class CreateCode {
    final String countryCode;
    final Media media;
    final String recipient;
    final String reference;
    final Usecase usecase;

    public static class Builder {
        String countryCode;
        final Media media;
        final String recipient;
        String reference;
        final Usecase usecase;

        public Builder(Media media, Usecase usecase, String str) {
            this.media = media;
            this.usecase = usecase;
            this.recipient = str;
        }

        public CreateCode build() {
            return new CreateCode(this.media, this.usecase, this.reference, this.recipient, this.countryCode, 0);
        }

        public Builder reference(String str) {
            this.reference = str;
            return this;
        }
    }

    public enum Media {
        SMS,
        EMAIL,
        URL
    }

    private CreateCode(Media media, Usecase usecase, String str, String str2, String str3) {
        this.media = media;
        this.usecase = usecase;
        this.recipient = str2;
        this.countryCode = str3;
        this.reference = str;
    }

    public static Builder email(Usecase usecase, String str) {
        return new Builder(Media.EMAIL, usecase, str);
    }

    public static SmsBuilder sms(Usecase usecase, String str) {
        return new SmsBuilder(usecase, str);
    }

    public static Builder url(Usecase usecase) {
        return new Builder(Media.URL, usecase, null);
    }

    public Media media() {
        return this.media;
    }

    public String recipient() {
        return this.recipient;
    }

    public String reference() {
        return this.reference;
    }

    public Usecase usecase() {
        return this.usecase;
    }

    public static class SmsBuilder extends Builder {
        public SmsBuilder(Usecase usecase, String str) {
            super(Media.SMS, usecase, str);
        }

        public SmsBuilder countryCode(String str) {
            this.countryCode = str;
            return this;
        }

        @Override // com.sightcall.universal.agent.CreateCode.Builder
        public SmsBuilder reference(String str) {
            super.reference(str);
            return this;
        }
    }

    public /* synthetic */ CreateCode(Media media, Usecase usecase, String str, String str2, String str3, int i2) {
        this(media, usecase, str, str2, str3);
    }
}
