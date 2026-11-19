package com.vuitton.android.presentation.screen.webview;

import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;", "", "LoadCart", "DisplayError", "SetConsents", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewViewEvents {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DisplayError extends WebViewViewEvents {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f65544a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DisplayError(Throwable th) {
            super(null);
            th.getClass();
            this.f65544a = th;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayError) && Intrinsics.c(this.f65544a, ((DisplayError) obj).f65544a);
        }

        public final int hashCode() {
            return this.f65544a.hashCode();
        }

        public final String toString() {
            return d21.n("DisplayError(error=", ")", this.f65544a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;", "", "cartUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LoadCart extends WebViewViewEvents {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65545a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadCart(String str) {
            super(null);
            str.getClass();
            this.f65545a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LoadCart) && Intrinsics.c(this.f65545a, ((LoadCart) obj).f65545a);
        }

        public final int hashCode() {
            return this.f65545a.hashCode();
        }

        public final String toString() {
            return fc.h("LoadCart(cartUrl=", this.f65545a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;", "", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "consentList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SetConsents extends WebViewViewEvents {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f65546a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SetConsents(List<? extends ConsentUiModel> list) {
            super(null);
            list.getClass();
            this.f65546a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SetConsents) && Intrinsics.c(this.f65546a, ((SetConsents) obj).f65546a);
        }

        public final int hashCode() {
            return this.f65546a.hashCode();
        }

        public final String toString() {
            return d21.o("SetConsents(consentList=", ")", this.f65546a);
        }
    }

    public WebViewViewEvents(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
