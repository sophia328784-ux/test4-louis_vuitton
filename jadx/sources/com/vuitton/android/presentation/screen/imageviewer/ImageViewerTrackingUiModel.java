package com.vuitton.android.presentation.screen.imageviewer;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0002\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;", "", "ImageViewerScreen", "Swipe", "SwipePrevious", "SwipeNext", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$ImageViewerScreen;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ImageViewerTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipeNext;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipePrevious;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Swipe implements ImageViewerTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58220b;

        public Swipe(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            this.f58219a = str;
            this.f58220b = str3;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$ImageViewerScreen;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;", "", "name", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ImageViewerScreen implements ImageViewerTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58218a;

        public /* synthetic */ ImageViewerScreen(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImageViewerScreen) && Intrinsics.c(this.f58218a, ((ImageViewerScreen) obj).f58218a);
        }

        public final int hashCode() {
            return this.f58218a.hashCode();
        }

        public final String toString() {
            return fc.h("ImageViewerScreen(name=", this.f58218a, ")");
        }

        public ImageViewerScreen(String str) {
            str.getClass();
            this.f58218a = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ImageViewerScreen() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipeNext;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;", "screenName", "", "eventCategory", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SwipeNext extends Swipe {
        public /* synthetic */ SwipeNext(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SwipeNext(String str, String str2) {
            super("next", str, str2, null);
            str.getClass();
            str2.getClass();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SwipeNext() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipePrevious;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;", "screenName", "", "eventCategory", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SwipePrevious extends Swipe {
        public /* synthetic */ SwipePrevious(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SwipePrevious(String str, String str2) {
            super("previous", str, str2, null);
            str.getClass();
            str2.getClass();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SwipePrevious() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }
}
