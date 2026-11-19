package com.vuitton.android.presentation.screen.account.lvpass;

import android.graphics.Bitmap;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;", "", "Loading", "Success", "Error", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Error;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Loading;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface QRCodeScreenState {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Error;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements QRCodeScreenState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52446a;

        public Error(String str) {
            str.getClass();
            this.f52446a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && Intrinsics.c(this.f52446a, ((Error) obj).f52446a);
        }

        public final int hashCode() {
            return this.f52446a.hashCode();
        }

        public final String toString() {
            return fc.h("Error(message=", this.f52446a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Loading;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements QRCodeScreenState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f52447a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -317987342;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;", "QrCode2D", "QrCode3D", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Success extends QRCodeScreenState {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;", "Landroid/graphics/Bitmap;", "bitmap", "<init>", "(Landroid/graphics/Bitmap;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class QrCode2D implements Success {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Bitmap f52448a;

            public QrCode2D(Bitmap bitmap) {
                bitmap.getClass();
                this.f52448a = bitmap;
            }

            @Override // com.vuitton.android.presentation.screen.account.lvpass.QRCodeScreenState.Success
            public final boolean a() {
                return false;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof QrCode2D) && Intrinsics.c(this.f52448a, ((QrCode2D) obj).f52448a);
            }

            public final int hashCode() {
                return this.f52448a.hashCode();
            }

            public final String toString() {
                return "QrCode2D(bitmap=" + this.f52448a + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;", "Landroid/graphics/Bitmap;", "normalBitmap", "diffuseBitmap", "<init>", "(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class QrCode3D implements Success {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Bitmap f52449a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Bitmap f52450b;

            public QrCode3D(Bitmap bitmap, Bitmap bitmap2) {
                bitmap.getClass();
                bitmap2.getClass();
                this.f52449a = bitmap;
                this.f52450b = bitmap2;
            }

            @Override // com.vuitton.android.presentation.screen.account.lvpass.QRCodeScreenState.Success
            public final boolean a() {
                return true;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof QrCode3D)) {
                    return false;
                }
                QrCode3D qrCode3D = (QrCode3D) obj;
                return Intrinsics.c(this.f52449a, qrCode3D.f52449a) && Intrinsics.c(this.f52450b, qrCode3D.f52450b);
            }

            public final int hashCode() {
                return this.f52450b.hashCode() + (this.f52449a.hashCode() * 31);
            }

            public final String toString() {
                return "QrCode3D(normalBitmap=" + this.f52449a + ", diffuseBitmap=" + this.f52450b + ")";
            }
        }

        boolean a();
    }
}
