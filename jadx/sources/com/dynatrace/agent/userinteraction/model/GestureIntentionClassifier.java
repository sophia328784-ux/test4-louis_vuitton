package com.dynatrace.agent.userinteraction.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;", "", "<init>", "()V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureIntentionClassifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f27139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f27140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f27141c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f27142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f27143f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f27144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f27145i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f27146j;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier$Companion;", "", "", "DIRECTIONALITY_THRESHOLD", "F", "REVERSAL_THRESHOLD", "", "TOTAL_PERCENT", "I", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public final void a(float f2, float f3) {
        float f4 = f2 - this.f27141c;
        float f5 = f3 - this.d;
        this.f27143f += (float) Math.hypot(f4, f5);
        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.g += f4;
        } else {
            this.f27144h += -f4;
        }
        if (f5 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.f27145i += f5;
        } else {
            this.f27146j += -f5;
        }
        this.f27141c = f2;
        this.d = f3;
        this.f27142e++;
    }
}
