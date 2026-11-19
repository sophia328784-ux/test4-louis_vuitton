package com.vuitton.android.presentation.screen.main.components;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.applink.SwapDispatchUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;", "", "AlreadySignedBottomSheet", "SighCallBottomSheet", "ChangeLocaleBottomSheet", "None", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$AlreadySignedBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$None;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$SighCallBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MainActivityBottomSheetType {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$AlreadySignedBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AlreadySignedBottomSheet extends MainActivityBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AlreadySignedBottomSheet f59102a = new AlreadySignedBottomSheet(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AlreadySignedBottomSheet);
        }

        public final int hashCode() {
            return -1577657718;
        }

        public final String toString() {
            return "AlreadySignedBottomSheet";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;", "Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;", "dispatch", "<init>", "(Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeLocaleBottomSheet extends MainActivityBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SwapDispatchUiModel f59103a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChangeLocaleBottomSheet(SwapDispatchUiModel swapDispatchUiModel) {
            super(null);
            swapDispatchUiModel.getClass();
            this.f59103a = swapDispatchUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeLocaleBottomSheet) && Intrinsics.c(this.f59103a, ((ChangeLocaleBottomSheet) obj).f59103a);
        }

        public final int hashCode() {
            return this.f59103a.hashCode();
        }

        public final String toString() {
            return "ChangeLocaleBottomSheet(dispatch=" + this.f59103a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$None;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class None extends MainActivityBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final None f59104a = new None(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof None);
        }

        public final int hashCode() {
            return 967942914;
        }

        public final String toString() {
            return "None";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$SighCallBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SighCallBottomSheet extends MainActivityBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59105a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SighCallBottomSheet(String str) {
            super(null);
            str.getClass();
            this.f59105a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SighCallBottomSheet) && Intrinsics.c(this.f59105a, ((SighCallBottomSheet) obj).f59105a);
        }

        public final int hashCode() {
            return this.f59105a.hashCode();
        }

        public final String toString() {
            return fc.h("SighCallBottomSheet(url=", this.f59105a, ")");
        }
    }

    public MainActivityBottomSheetType(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
