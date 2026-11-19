package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState;", "", "Modify", "Expand", "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState$Expand;", "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState$Modify;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CustomizationCardState {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState$Modify;", "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState;", "Lkotlin/Function0;", "", "onClick", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Modify implements CustomizationCardState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Function0 f61439a;

        public Modify(Function0<Unit> function0) {
            function0.getClass();
            this.f61439a = function0;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState$Expand;", "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState;", "", "isExpandedByDefault", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Expand implements CustomizationCardState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f61438a;

        public /* synthetic */ Expand(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public Expand(boolean z) {
            this.f61438a = z;
        }

        public Expand() {
            this(false, 1, null);
        }
    }
}
