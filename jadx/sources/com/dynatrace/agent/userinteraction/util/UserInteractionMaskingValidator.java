package com.dynatrace.agent.userinteraction.util;

import android.view.View;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator;", "", "<init>", "()V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserInteractionMaskingValidator {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator$Companion;", "", "", "DT_MASK_TAG", "Ljava/lang/String;", "SR_MASK_TAG", "", "MASK_FOR_BITS", "I", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public static boolean a(View view) {
        if (view instanceof TextView) {
            int inputType = ((TextView) view).getInputType() & 4080;
            boolean z = inputType == 128 || inputType == 144;
            boolean z2 = inputType == 16;
            boolean z3 = inputType == 224;
            if (z || z2 || z3) {
                return true;
            }
        }
        return false;
    }
}
