package com.sensorsdata.analytics.android.sdk.visual.view;

/* JADX INFO: loaded from: classes3.dex */
interface IPairingCodeInterface {

    public interface OnPairingCodeChangedListener {
        void onInputCompleted(CharSequence charSequence);

        void onPairingCodeChanged(CharSequence charSequence, int i2, int i3, int i4);
    }

    void setBottomLineHeight(int i2);

    void setBottomNormalColor(int i2);

    void setBottomSelectedColor(int i2);

    void setFigures(int i2);

    void setOnPairingCodeChangedListener(OnPairingCodeChangedListener onPairingCodeChangedListener);

    void setPairingCodeMargin(int i2);

    void setSelectedBackgroundColor(int i2);
}
