package com.dynatrace.agent.events.enrichment.sanitation;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;", "", "", ConfigurationName.KEY, "value", "<init>", "(Ljava/lang/String;Ljava/lang/Object;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class JsonAttribute {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f26787b;

    public JsonAttribute(String str, Object obj) {
        str.getClass();
        obj.getClass();
        this.f26786a = str;
        this.f26787b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JsonAttribute)) {
            return false;
        }
        JsonAttribute jsonAttribute = (JsonAttribute) obj;
        return Intrinsics.c(this.f26786a, jsonAttribute.f26786a) && Intrinsics.c(this.f26787b, jsonAttribute.f26787b);
    }

    public final int hashCode() {
        return this.f26787b.hashCode() + (this.f26786a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JsonAttribute(key=");
        sb.append(this.f26786a);
        sb.append(", value=");
        return o60.r(sb, this.f26787b, ')');
    }
}
