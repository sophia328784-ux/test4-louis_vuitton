package com.vuitton.android.designkit.ui.theme.atoms;

import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;", "", "Idle", "Animating", "Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Animating;", "Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Idle;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface StepState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Animating;", "Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Animating implements StepState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Animating f48517a = new Animating();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Idle;", "Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;", "", "fill", "<init>", "(Z)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Idle implements StepState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f48518a;

        public Idle(boolean z) {
            this.f48518a = z;
        }
    }
}
