package com.sightcall.universal.internal.messaging;

import defpackage.d21;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Message {
    protected final String content;
    protected final String role;
    protected final long timestamp;
    protected final String uid;

    private Message(long j2, String str, String str2, String str3) {
        this.timestamp = j2;
        this.uid = str;
        this.content = str2;
        this.role = str3;
    }

    public static Builder.Incoming newIncomingMessage() {
        return new Builder.Incoming();
    }

    public static Builder.Outgoing newOutgoingMessage() {
        return new Builder.Outgoing();
    }

    public String content() {
        return this.content;
    }

    public String role() {
        return this.role;
    }

    public long timestamp() {
        return this.timestamp;
    }

    public String uid() {
        return this.uid;
    }

    public static abstract class Builder {
        protected String content;
        protected String role;
        protected long timestamp = System.currentTimeMillis();
        protected String uid;

        public abstract Message build();

        public Builder content(String str) {
            this.content = str;
            return this;
        }

        public Builder role(String str) {
            this.role = str;
            return this;
        }

        public Builder timestamp(long j2) {
            this.timestamp = j2;
            return this;
        }

        public Builder uid(String str) {
            this.uid = str;
            return this;
        }

        public static final class Incoming extends Builder {
            private boolean read = false;

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Incoming build() {
                Incoming incoming = new Incoming(this.timestamp, this.uid, this.content, this.role, 0);
                incoming.read = this.read;
                return incoming;
            }

            public Incoming read(boolean z) {
                this.read = z;
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Incoming content(String str) {
                super.content(str);
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Incoming role(String str) {
                this.role = str;
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Incoming timestamp(long j2) {
                super.timestamp(j2);
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Incoming uid(String str) {
                super.uid(str);
                return this;
            }
        }

        public static final class Outgoing extends Builder {
            private boolean success;

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Outgoing build() {
                Outgoing outgoing = new Outgoing(this.timestamp, this.uid, this.content, this.role, 0);
                outgoing.success = this.success;
                return outgoing;
            }

            public Outgoing success(boolean z) {
                this.success = z;
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Outgoing content(String str) {
                super.content(str);
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Outgoing role(String str) {
                this.role = str;
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Outgoing timestamp(long j2) {
                super.timestamp(j2);
                return this;
            }

            @Override // com.sightcall.universal.internal.messaging.Message.Builder
            public Outgoing uid(String str) {
                super.uid(str);
                return this;
            }
        }
    }

    public static final class Outgoing extends Message {
        private boolean success;

        private Outgoing(long j2, String str, String str2) {
            super(j2, str, str2, "", 0);
        }

        public boolean isSuccess() {
            return this.success;
        }

        public void success(boolean z) {
            this.success = z;
        }

        public /* synthetic */ Outgoing(long j2, String str, String str2, String str3, int i2) {
            this(j2, str, str2, str3);
        }

        private Outgoing(long j2, String str, String str2, String str3) {
            super(j2, str, str2, str3, 0);
        }
    }

    public static final class Incoming extends Message {
        private boolean read;

        private Incoming(long j2, String str, String str2, String str3) {
            super(j2, str, str2, str3, 0);
            this.read = false;
        }

        public boolean isRead() {
            return this.read;
        }

        public void read(boolean z) {
            this.read = z;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Incoming{timestamp=");
            sb.append(this.timestamp);
            sb.append(", role=");
            sb.append(this.role);
            sb.append("', content='");
            sb.append(this.content);
            sb.append("', uid='");
            sb.append(this.uid);
            sb.append("', read=");
            return d21.q(sb, this.read, '}');
        }

        public /* synthetic */ Incoming(long j2, String str, String str2, String str3, int i2) {
            this(j2, str, str2, str3);
        }
    }

    public /* synthetic */ Message(long j2, String str, String str2, String str3, int i2) {
        this(j2, str, str2, str3);
    }
}
