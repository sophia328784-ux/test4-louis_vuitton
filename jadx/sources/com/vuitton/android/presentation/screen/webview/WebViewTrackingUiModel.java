package com.vuitton.android.presentation.screen.webview;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0019\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u0082\u0001\u0019\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123¨\u00064À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "", "MyMonogramWebViewScreen", "OnMyMonogramWebViewConfirmEvent", "OnMyMonogramWebViewBottomSheetOpenEvent", "OnMyMonogramWebViewBottomSheetConfirmEvent", "OnMyMonogramWebViewBottomSheetCancelEvent", "BeautyEngravingWebViewScreen", "OnBeautyEngravingWebViewConfirmEvent", "OnBeautyEngravingWebViewBottomSheetOpenEvent", "OnBeautyEngravingWebViewBottomSheetConfirmEvent", "OnBeautyEngravingWebViewBottomSheetCancelEvent", "HotstampingWebViewScreen", "OnHotstampingWebViewConfirmEvent", "OnHotstampingWebViewBottomSheetOpenEvent", "OnHotstampingWebViewBottomSheetConfirmEvent", "OnHotstampingWebViewBottomSheetCancelEvent", "PerfumeEngravingWebViewScreen", "OnPerfumeEngravingWebViewConfirmEvent", "OnPerfumeEngravingWebViewBottomSheetOpenEvent", "OnPerfumeEngravingWebViewBottomSheetConfirmEvent", "OnPerfumeEngravingWebViewBottomSheetCancelEvent", "DiamondEngravingWebViewScreen", "OnDiamondEngravingWebViewConfirmEvent", "OnDiamondEngravingWebViewBottomSheetOpenEvent", "OnDiamondEngravingWebViewBottomSheetConfirmEvent", "OnDiamondEngravingWebViewBottomSheetCancelEvent", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$BeautyEngravingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$DiamondEngravingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$HotstampingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$MyMonogramWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$PerfumeEngravingWebViewScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WebViewTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$BeautyEngravingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BeautyEngravingWebViewScreen implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BeautyEngravingWebViewScreen f65510a = new BeautyEngravingWebViewScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BeautyEngravingWebViewScreen);
        }

        public final int hashCode() {
            return 1616076061;
        }

        public final String toString() {
            return "BeautyEngravingWebViewScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$DiamondEngravingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DiamondEngravingWebViewScreen implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DiamondEngravingWebViewScreen f65511a = new DiamondEngravingWebViewScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DiamondEngravingWebViewScreen);
        }

        public final int hashCode() {
            return 632157931;
        }

        public final String toString() {
            return "DiamondEngravingWebViewScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$HotstampingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HotstampingWebViewScreen implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HotstampingWebViewScreen f65512a = new HotstampingWebViewScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HotstampingWebViewScreen);
        }

        public final int hashCode() {
            return 832346894;
        }

        public final String toString() {
            return "HotstampingWebViewScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$MyMonogramWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyMonogramWebViewScreen implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final MyMonogramWebViewScreen f65513a = new MyMonogramWebViewScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyMonogramWebViewScreen);
        }

        public final int hashCode() {
            return 1719545098;
        }

        public final String toString() {
            return "MyMonogramWebViewScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBeautyEngravingWebViewBottomSheetCancelEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBeautyEngravingWebViewBottomSheetCancelEvent f65514a = new OnBeautyEngravingWebViewBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBeautyEngravingWebViewBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return 1986448028;
        }

        public final String toString() {
            return "OnBeautyEngravingWebViewBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBeautyEngravingWebViewBottomSheetConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBeautyEngravingWebViewBottomSheetConfirmEvent f65515a = new OnBeautyEngravingWebViewBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBeautyEngravingWebViewBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return 1447208158;
        }

        public final String toString() {
            return "OnBeautyEngravingWebViewBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBeautyEngravingWebViewBottomSheetOpenEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBeautyEngravingWebViewBottomSheetOpenEvent f65516a = new OnBeautyEngravingWebViewBottomSheetOpenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBeautyEngravingWebViewBottomSheetOpenEvent);
        }

        public final int hashCode() {
            return 600972236;
        }

        public final String toString() {
            return "OnBeautyEngravingWebViewBottomSheetOpenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBeautyEngravingWebViewConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBeautyEngravingWebViewConfirmEvent f65517a = new OnBeautyEngravingWebViewConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBeautyEngravingWebViewConfirmEvent);
        }

        public final int hashCode() {
            return 1697974442;
        }

        public final String toString() {
            return "OnBeautyEngravingWebViewConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiamondEngravingWebViewBottomSheetCancelEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDiamondEngravingWebViewBottomSheetCancelEvent f65518a = new OnDiamondEngravingWebViewBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDiamondEngravingWebViewBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return -1919388724;
        }

        public final String toString() {
            return "OnDiamondEngravingWebViewBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiamondEngravingWebViewBottomSheetConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDiamondEngravingWebViewBottomSheetConfirmEvent f65519a = new OnDiamondEngravingWebViewBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDiamondEngravingWebViewBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return 625353134;
        }

        public final String toString() {
            return "OnDiamondEngravingWebViewBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiamondEngravingWebViewBottomSheetOpenEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDiamondEngravingWebViewBottomSheetOpenEvent f65520a = new OnDiamondEngravingWebViewBottomSheetOpenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDiamondEngravingWebViewBottomSheetOpenEvent);
        }

        public final int hashCode() {
            return -860073732;
        }

        public final String toString() {
            return "OnDiamondEngravingWebViewBottomSheetOpenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiamondEngravingWebViewConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDiamondEngravingWebViewConfirmEvent f65521a = new OnDiamondEngravingWebViewConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDiamondEngravingWebViewConfirmEvent);
        }

        public final int hashCode() {
            return 729771482;
        }

        public final String toString() {
            return "OnDiamondEngravingWebViewConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotstampingWebViewBottomSheetCancelEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHotstampingWebViewBottomSheetCancelEvent f65522a = new OnHotstampingWebViewBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHotstampingWebViewBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return 1784086029;
        }

        public final String toString() {
            return "OnHotstampingWebViewBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotstampingWebViewBottomSheetConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHotstampingWebViewBottomSheetConfirmEvent f65523a = new OnHotstampingWebViewBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHotstampingWebViewBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return -531046515;
        }

        public final String toString() {
            return "OnHotstampingWebViewBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotstampingWebViewBottomSheetOpenEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHotstampingWebViewBottomSheetOpenEvent f65524a = new OnHotstampingWebViewBottomSheetOpenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHotstampingWebViewBottomSheetOpenEvent);
        }

        public final int hashCode() {
            return -597002371;
        }

        public final String toString() {
            return "OnHotstampingWebViewBottomSheetOpenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotstampingWebViewConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHotstampingWebViewConfirmEvent f65525a = new OnHotstampingWebViewConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHotstampingWebViewConfirmEvent);
        }

        public final int hashCode() {
            return 970499419;
        }

        public final String toString() {
            return "OnHotstampingWebViewConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMyMonogramWebViewBottomSheetCancelEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnMyMonogramWebViewBottomSheetCancelEvent f65526a = new OnMyMonogramWebViewBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnMyMonogramWebViewBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return -1291413333;
        }

        public final String toString() {
            return "OnMyMonogramWebViewBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMyMonogramWebViewBottomSheetConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnMyMonogramWebViewBottomSheetConfirmEvent f65527a = new OnMyMonogramWebViewBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnMyMonogramWebViewBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return -1382246225;
        }

        public final String toString() {
            return "OnMyMonogramWebViewBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMyMonogramWebViewBottomSheetOpenEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnMyMonogramWebViewBottomSheetOpenEvent f65528a = new OnMyMonogramWebViewBottomSheetOpenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnMyMonogramWebViewBottomSheetOpenEvent);
        }

        public final int hashCode() {
            return -86236773;
        }

        public final String toString() {
            return "OnMyMonogramWebViewBottomSheetOpenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMyMonogramWebViewConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnMyMonogramWebViewConfirmEvent f65529a = new OnMyMonogramWebViewConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnMyMonogramWebViewConfirmEvent);
        }

        public final int hashCode() {
            return -479376007;
        }

        public final String toString() {
            return "OnMyMonogramWebViewConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPerfumeEngravingWebViewBottomSheetCancelEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPerfumeEngravingWebViewBottomSheetCancelEvent f65530a = new OnPerfumeEngravingWebViewBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPerfumeEngravingWebViewBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return -2069374020;
        }

        public final String toString() {
            return "OnPerfumeEngravingWebViewBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPerfumeEngravingWebViewBottomSheetConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPerfumeEngravingWebViewBottomSheetConfirmEvent f65531a = new OnPerfumeEngravingWebViewBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPerfumeEngravingWebViewBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return 270776254;
        }

        public final String toString() {
            return "OnPerfumeEngravingWebViewBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPerfumeEngravingWebViewBottomSheetOpenEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPerfumeEngravingWebViewBottomSheetOpenEvent f65532a = new OnPerfumeEngravingWebViewBottomSheetOpenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPerfumeEngravingWebViewBottomSheetOpenEvent);
        }

        public final int hashCode() {
            return -882576148;
        }

        public final String toString() {
            return "OnPerfumeEngravingWebViewBottomSheetOpenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewConfirmEvent;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPerfumeEngravingWebViewConfirmEvent implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPerfumeEngravingWebViewConfirmEvent f65533a = new OnPerfumeEngravingWebViewConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPerfumeEngravingWebViewConfirmEvent);
        }

        public final int hashCode() {
            return 1363345866;
        }

        public final String toString() {
            return "OnPerfumeEngravingWebViewConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$PerfumeEngravingWebViewScreen;", "Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PerfumeEngravingWebViewScreen implements WebViewTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PerfumeEngravingWebViewScreen f65534a = new PerfumeEngravingWebViewScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PerfumeEngravingWebViewScreen);
        }

        public final int hashCode() {
            return 2062237403;
        }

        public final String toString() {
            return "PerfumeEngravingWebViewScreen";
        }
    }
}
