package com.linkplay.bonjour.model;

import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b;
import defpackage.fc;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LinkPlayService {
    private static SimpleDateFormat formater = new SimpleDateFormat(b.f22423j);
    private final String domain;
    private final int flags;
    private String fullName;
    private String hostName;
    private final int ifIndex;
    private String ip;
    private String manufacturer;
    private int port;
    private byte[] rdata;
    private final String regType;
    private int rrclass;
    private int rrtype;
    private String security;
    private final String serviceName;
    private Date time;
    private int ttl;
    private Map<String, String> txtRecord;
    private String uuid;
    private String version;

    public LinkPlayService(Builder builder) {
        this.flags = builder.flags;
        this.ifIndex = builder.ifIndex;
        this.serviceName = builder.serviceName;
        this.regType = builder.regType;
        this.domain = builder.domain;
        this.fullName = builder.fullName;
        this.hostName = builder.hostName;
        this.port = builder.port;
        this.txtRecord = builder.txtRecord;
        this.rrtype = builder.rrtype;
        this.rrclass = builder.rrclass;
        this.rdata = builder.rdata;
        this.ttl = builder.ttl;
        this.ip = builder.ip;
        this.uuid = builder.uuid;
        this.security = builder.security;
        this.version = builder.version;
        this.time = builder.time;
        this.manufacturer = builder.manufacturer;
    }

    public String getDomain() {
        return this.domain;
    }

    public int getFlags() {
        return this.flags;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getHostName() {
        return this.hostName;
    }

    public int getIfIndex() {
        return this.ifIndex;
    }

    public String getIp() {
        return this.ip;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public int getPort() {
        return this.port;
    }

    public byte[] getRdata() {
        return this.rdata;
    }

    public String getRegType() {
        return this.regType;
    }

    public int getRrclass() {
        return this.rrclass;
    }

    public int getRrtype() {
        return this.rrtype;
    }

    public String getSecurity() {
        return this.security;
    }

    public String getServiceName() {
        return this.serviceName;
    }

    public Date getTime() {
        return this.time;
    }

    public String getTimeStr() {
        Date date = this.time;
        return date == null ? "" : formater.format(date);
    }

    public int getTtl() {
        return this.ttl;
    }

    public Map<String, String> getTxtRecord() {
        return this.txtRecord;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LinkPlayService{flags=");
        sb.append(this.flags);
        sb.append(", ifIndex=");
        sb.append(this.ifIndex);
        sb.append(", serviceName='");
        sb.append(this.serviceName);
        sb.append("', regType='");
        sb.append(this.regType);
        sb.append("', domain='");
        sb.append(this.domain);
        sb.append("', fullName='");
        sb.append(this.fullName);
        sb.append("', hostName='");
        sb.append(this.hostName);
        sb.append("', port=");
        sb.append(this.port);
        sb.append(", txtRecord=");
        sb.append(this.txtRecord);
        sb.append(", rrtype=");
        sb.append(this.rrtype);
        sb.append(", rrclass=");
        sb.append(this.rrclass);
        sb.append(", rdata=");
        sb.append(Arrays.toString(this.rdata));
        sb.append(", ttl=");
        sb.append(this.ttl);
        sb.append(", ip='");
        sb.append(this.ip);
        sb.append("', version='");
        sb.append(this.version);
        sb.append("', uuid='");
        sb.append(this.uuid);
        sb.append("', time=");
        Date date = this.time;
        sb.append(date == null ? "null" : formater.format(date));
        sb.append(",manufacturer=");
        return fc.l(sb, this.manufacturer, '}');
    }

    public static class Builder {
        private final String domain;
        private final int flags;
        private String fullName;
        private String hostName;
        private final int ifIndex;
        private String ip;
        private String manufacturer;
        private int port;
        private byte[] rdata;
        private final String regType;
        private int rrclass;
        private int rrtype;
        private String security;
        private final String serviceName;
        private Date time;
        private int ttl;
        private Map<String, String> txtRecord;
        private String uuid;
        private String version;

        public Builder(LinkPlayService linkPlayService) {
            this.flags = linkPlayService.flags;
            this.ifIndex = linkPlayService.ifIndex;
            this.serviceName = linkPlayService.serviceName;
            this.regType = linkPlayService.regType;
            this.domain = linkPlayService.domain;
            this.fullName = linkPlayService.fullName;
            this.hostName = linkPlayService.hostName;
            this.port = linkPlayService.port;
            this.txtRecord = linkPlayService.txtRecord;
            this.rrtype = linkPlayService.rrtype;
            this.rrclass = linkPlayService.rrclass;
            this.rdata = linkPlayService.rdata;
            this.ttl = linkPlayService.ttl;
            this.ip = linkPlayService.ip;
            this.uuid = linkPlayService.uuid;
            this.security = linkPlayService.security;
            this.version = linkPlayService.version;
            this.time = linkPlayService.time;
            this.manufacturer = linkPlayService.manufacturer;
        }

        public LinkPlayService build() {
            return new LinkPlayService(this);
        }

        public Builder fullName(String str) {
            this.fullName = str;
            return this;
        }

        public String getManufacturer() {
            return this.manufacturer;
        }

        public Builder hostName(String str) {
            this.hostName = str;
            return this;
        }

        public Builder ip(String str) {
            this.ip = str;
            return this;
        }

        public Builder port(int i2) {
            this.port = i2;
            return this;
        }

        public Builder rdata(byte[] bArr) {
            this.rdata = bArr;
            return this;
        }

        public Builder rrclass(int i2) {
            this.rrclass = i2;
            return this;
        }

        public Builder rrtype(int i2) {
            this.rrtype = i2;
            return this;
        }

        public Builder security(String str) {
            this.security = str;
            return this;
        }

        public Builder setManufacturer(String str) {
            this.manufacturer = str;
            return this;
        }

        public Builder time(Date date) {
            this.time = date;
            return this;
        }

        public Builder ttl(int i2) {
            this.ttl = i2;
            return this;
        }

        public Builder txtRecord(Map<String, String> map) {
            this.txtRecord = map;
            return this;
        }

        public Builder uuid(String str) {
            this.uuid = str;
            return this;
        }

        public Builder version(String str) {
            this.version = str;
            return this;
        }

        public Builder(int i2, int i3, String str, String str2, String str3) {
            this.flags = i2;
            this.ifIndex = i3;
            this.serviceName = str;
            this.regType = str2;
            this.domain = str3;
        }
    }
}
