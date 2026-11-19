package com.dynatrace.agent.events;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/dynatrace/agent/events/TraceparentHeader;", "", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TraceparentHeader {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f26750e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Regex f26751f = new Regex("^00-([0-9a-f]{32})-([0-9a-f]{16})-(0[01])$");
    public static final Regex g = new Regex("^(?!00|ff)[0-9a-f]{2}-([0-9a-f]{32})-([0-9a-f]{16})-([0-9a-f]{2})(?:-.*)?$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26754c;
    public final String d;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/events/TraceparentHeader$Companion;", "", "", "SUPPORTED_TRACEPARENT_VERSION", "Ljava/lang/String;", "", "HIGHER_VERSION_TRACEPARENT_MIN_LENGTH", "I", "TRACEPARENT_REGEX", "HIGHER_VERSION_TRACEPARENT_REGEX", "Lkotlin/text/Regex;", "pattern", "Lkotlin/text/Regex;", "higherVersionPattern", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TraceparentHeader(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f26752a = str;
        this.f26753b = str2;
        this.f26754c = str3;
        this.d = str4;
    }

    public final String toString() {
        return this.f26752a + '-' + this.f26753b + '-' + this.f26754c + '-' + this.d;
    }
}
