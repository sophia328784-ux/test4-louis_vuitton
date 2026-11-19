package com.dynatrace.agent.view;

import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0012B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/dynatrace/agent/view/ViewSummary;", "", "", "startTime", "duration", "", "errorCount", "errorExceptionCount", "errorHttp4xxCount", "errorHttp5xxCount", "errorHttpOtherCount", "errorRequestOtherCount", "", "hasCrash", "Lorg/json/JSONObject;", "fields", "<init>", "(JJIIIIIIZLorg/json/JSONObject;)V", "ViewSummaryKeys", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ViewSummary {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27239c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27241f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f27242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f27243i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final JSONObject f27244j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/view/ViewSummary$ViewSummaryKeys;", "", "", "ERROR_NAMESPACE", "Ljava/lang/String;", "COUNT", "EXCEPTION_COUNT", "HTTP_4XX_COUNT", "HTTP_5XX_COUNT", "HTTP_OTHER_COUNT", "REQUEST_OTHER_COUNT", "HAS_CRASH", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ViewSummaryKeys {
        public ViewSummaryKeys(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new ViewSummaryKeys(null);
    }

    public /* synthetic */ ViewSummary(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, JSONObject jSONObject, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, i2, i3, i4, i5, i6, i7, z, (i8 & 512) != 0 ? null : jSONObject);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewSummary)) {
            return false;
        }
        ViewSummary viewSummary = (ViewSummary) obj;
        return this.f27237a == viewSummary.f27237a && this.f27238b == viewSummary.f27238b && this.f27239c == viewSummary.f27239c && this.d == viewSummary.d && this.f27240e == viewSummary.f27240e && this.f27241f == viewSummary.f27241f && this.g == viewSummary.g && this.f27242h == viewSummary.f27242h && this.f27243i == viewSummary.f27243i && Intrinsics.c(this.f27244j, viewSummary.f27244j);
    }

    public final int hashCode() {
        int iB = o60.b(tr.b(this.f27242h, tr.b(this.g, tr.b(this.f27241f, tr.b(this.f27240e, tr.b(this.d, tr.b(this.f27239c, fc.a(Long.hashCode(this.f27237a) * 31, 31, this.f27238b), 31), 31), 31), 31), 31), 31), 31, this.f27243i);
        JSONObject jSONObject = this.f27244j;
        return iB + (jSONObject == null ? 0 : jSONObject.hashCode());
    }

    public final String toString() {
        return "ViewSummary(startTime=" + this.f27237a + ", duration=" + this.f27238b + ", errorCount=" + this.f27239c + ", errorExceptionCount=" + this.d + ", errorHttp4xxCount=" + this.f27240e + ", errorHttp5xxCount=" + this.f27241f + ", errorHttpOtherCount=" + this.g + ", errorRequestOtherCount=" + this.f27242h + ", hasCrash=" + this.f27243i + ", fields=" + this.f27244j + ')';
    }

    public ViewSummary(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, JSONObject jSONObject) {
        this.f27237a = j2;
        this.f27238b = j3;
        this.f27239c = i2;
        this.d = i3;
        this.f27240e = i4;
        this.f27241f = i5;
        this.g = i6;
        this.f27242h = i7;
        this.f27243i = z;
        this.f27244j = jSONObject;
    }
}
