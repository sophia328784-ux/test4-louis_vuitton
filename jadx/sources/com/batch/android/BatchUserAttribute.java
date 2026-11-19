package com.batch.android;

import java.net.URI;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class BatchUserAttribute {
    public Type type;
    public Object value;

    public enum Type {
        STRING,
        LONGLONG,
        DOUBLE,
        BOOL,
        DATE,
        URL
    }

    public BatchUserAttribute(Object obj, Type type) {
        this.value = obj;
        this.type = type;
    }

    public Boolean getBooleanValue() {
        if (this.type == Type.BOOL) {
            return (Boolean) this.value;
        }
        return null;
    }

    public Date getDateValue() {
        if (this.type == Type.DATE) {
            return (Date) this.value;
        }
        return null;
    }

    public Number getNumberValue() {
        Type type = this.type;
        if (type == Type.LONGLONG || type == Type.DOUBLE) {
            return (Number) this.value;
        }
        return null;
    }

    public String getStringValue() {
        if (this.type == Type.STRING) {
            return (String) this.value;
        }
        return null;
    }

    public URI getUriValue() {
        if (this.type == Type.URL) {
            return (URI) this.value;
        }
        return null;
    }
}
