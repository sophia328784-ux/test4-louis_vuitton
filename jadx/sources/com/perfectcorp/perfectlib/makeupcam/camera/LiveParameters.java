package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.jniproxy.UIShimmer;
import com.perfectcorp.perfectlib.jniproxy.VN_EyebrowMode;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;

/* JADX INFO: loaded from: classes3.dex */
@FunctionalInterface
public interface LiveParameters {

    public static final class Eyebrow implements LiveParameters {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Setting f40731a = Setting.n;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LiveSettingCtrl f40732b;

        public static final class Setting {
            public static final Setting n = new Setting(VN_EyebrowMode.EYEBROW_ORIGINAL_MODE, 0, 0, 0, 0, 0, 0, 0, 0, 0, false, false, null);

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final VN_EyebrowMode f40733a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f40734b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f40735c;
            public final int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final int f40736e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final int f40737f;
            public final int g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final int f40738h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final int f40739i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final int f40740j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final boolean f40741k;
            public final boolean l;
            public final UIShimmer m;

            public Setting(VN_EyebrowMode vN_EyebrowMode, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z, boolean z2, UIShimmer uIShimmer) {
                this.f40733a = vN_EyebrowMode;
                this.f40734b = i2;
                this.f40735c = i3;
                this.d = i4;
                this.f40736e = i5;
                this.f40737f = i6;
                this.g = i7;
                this.f40738h = i8;
                this.f40739i = i9;
                this.f40740j = i10;
                this.f40741k = z;
                this.l = z2;
                this.m = uIShimmer;
            }
        }

        public Eyebrow(LiveSettingCtrl liveSettingCtrl) {
            this.f40732b = liveSettingCtrl;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveParameters
        public final void update() {
            LiveSettingCtrl liveSettingCtrl = this.f40732b;
            this.f40731a = liveSettingCtrl.o(BeautyMode.EYE_BROW) ? liveSettingCtrl.n : Setting.n;
        }
    }

    public static final class Reshape implements LiveParameters {
        int cheekbones_intensity;
        int chin_length_intensity;
        int chin_reshape_intensity;
        int chin_reshape_left_intensity;
        int chin_reshape_right_intensity;
        int enlarge_eye_intensity;
        int enlarge_eye_left_intensity;
        int enlarge_eye_right_intensity;
        int eye_distance_intensity;
        int eye_height_intensity;
        int eye_slant_intensity;
        int eye_width_intensity;
        int face_reshape_intensity;
        int face_reshape_left_intensity;
        int face_reshape_right_intensity;
        int face_width_intensity;
        boolean is_cheekbones_enabled;
        boolean is_chin_length_enabled;
        boolean is_chin_reshape_enabled;
        boolean is_enlarge_eye_enabled;
        boolean is_eye_distance_enabled;
        boolean is_eye_height_enabled;
        boolean is_eye_slant_enabled;
        boolean is_eye_width_enabled;
        boolean is_face_reshape_enabled;
        boolean is_face_width_enabled;
        boolean is_jaw_enabled;
        boolean is_mouth_height_enabled;
        boolean is_mouth_size_enabled;
        boolean is_mouth_width_enabled;
        boolean is_mshaped_lip_enabled;
        boolean is_nose_bridge_width_enabled;
        boolean is_nose_length_enabled;
        boolean is_nose_size_enabled;
        boolean is_nose_tip_enabled;
        boolean is_nose_tip_width_enabled;
        boolean is_nose_wing_enabled;
        int jaw_intensity;
        final LiveSettingCtrl liveSettingCtrl;
        int mouth_height_intensity;
        int mouth_height_lower_intensity;
        int mouth_height_upper_intensity;
        int mouth_size_intensity;
        int mouth_width_intensity;
        int mshaped_lip_intensity;
        int nose_bridge_width_intensity;
        int nose_length_intensity;
        int nose_size_intensity;
        int nose_tip_intensity;
        int nose_tip_width_intensity;
        int nose_wing_intensity;

        public Reshape(LiveSettingCtrl liveSettingCtrl) {
            this.liveSettingCtrl = liveSettingCtrl;
        }

        private void updateEye() {
            LiveSettingCtrl liveSettingCtrl = this.liveSettingCtrl;
            BeautyMode beautyMode = BeautyMode.EYE_SIZE;
            boolean zO = liveSettingCtrl.o(beautyMode);
            LiveSettingCtrl liveSettingCtrl2 = this.liveSettingCtrl;
            BeautyMode beautyMode2 = BeautyMode.EYE_SIZE_LEFT;
            boolean zO2 = liveSettingCtrl2.o(beautyMode2);
            LiveSettingCtrl liveSettingCtrl3 = this.liveSettingCtrl;
            BeautyMode beautyMode3 = BeautyMode.EYE_SIZE_RIGHT;
            boolean zO3 = liveSettingCtrl3.o(beautyMode3);
            this.is_enlarge_eye_enabled = zO || zO2 || zO3;
            this.enlarge_eye_intensity = zO ? this.liveSettingCtrl.k(beautyMode) : 0;
            this.enlarge_eye_left_intensity = zO2 ? this.liveSettingCtrl.k(beautyMode2) : 0;
            this.enlarge_eye_right_intensity = zO3 ? this.liveSettingCtrl.k(beautyMode3) : 0;
            LiveSettingCtrl liveSettingCtrl4 = this.liveSettingCtrl;
            BeautyMode beautyMode4 = BeautyMode.EYE_DISTANCE;
            boolean zO4 = liveSettingCtrl4.o(beautyMode4);
            this.is_eye_distance_enabled = zO4;
            this.eye_distance_intensity = zO4 ? this.liveSettingCtrl.k(beautyMode4) : 0;
            LiveSettingCtrl liveSettingCtrl5 = this.liveSettingCtrl;
            BeautyMode beautyMode5 = BeautyMode.EYE_HEIGHT;
            boolean zO5 = liveSettingCtrl5.o(beautyMode5);
            this.is_eye_height_enabled = zO5;
            this.eye_height_intensity = zO5 ? this.liveSettingCtrl.k(beautyMode5) : 0;
            LiveSettingCtrl liveSettingCtrl6 = this.liveSettingCtrl;
            BeautyMode beautyMode6 = BeautyMode.EYE_SLANT;
            boolean zO6 = liveSettingCtrl6.o(beautyMode6);
            this.is_eye_slant_enabled = zO6;
            this.eye_slant_intensity = zO6 ? this.liveSettingCtrl.k(beautyMode6) : 0;
            LiveSettingCtrl liveSettingCtrl7 = this.liveSettingCtrl;
            BeautyMode beautyMode7 = BeautyMode.EYE_WIDTH;
            boolean zO7 = liveSettingCtrl7.o(beautyMode7);
            this.is_eye_width_enabled = zO7;
            this.eye_width_intensity = zO7 ? this.liveSettingCtrl.k(beautyMode7) : 0;
        }

        private void updateFace() {
            LiveSettingCtrl liveSettingCtrl = this.liveSettingCtrl;
            BeautyMode beautyMode = BeautyMode.FACE_RESHAPE;
            boolean zO = liveSettingCtrl.o(beautyMode);
            LiveSettingCtrl liveSettingCtrl2 = this.liveSettingCtrl;
            BeautyMode beautyMode2 = BeautyMode.FACE_RESHAPE_LEFT;
            boolean zO2 = liveSettingCtrl2.o(beautyMode2);
            LiveSettingCtrl liveSettingCtrl3 = this.liveSettingCtrl;
            BeautyMode beautyMode3 = BeautyMode.FACE_RESHAPE_RIGHT;
            boolean zO3 = liveSettingCtrl3.o(beautyMode3);
            boolean z = true;
            this.is_face_reshape_enabled = zO || zO2 || zO3;
            this.face_reshape_intensity = zO ? this.liveSettingCtrl.k(beautyMode) : 0;
            this.face_reshape_left_intensity = zO2 ? this.liveSettingCtrl.k(beautyMode2) : 0;
            this.face_reshape_right_intensity = zO3 ? this.liveSettingCtrl.k(beautyMode3) : 0;
            LiveSettingCtrl liveSettingCtrl4 = this.liveSettingCtrl;
            BeautyMode beautyMode4 = BeautyMode.FACE_CHEEKBONE;
            boolean zO4 = liveSettingCtrl4.o(beautyMode4);
            this.is_cheekbones_enabled = zO4;
            this.cheekbones_intensity = zO4 ? this.liveSettingCtrl.k(beautyMode4) : 0;
            LiveSettingCtrl liveSettingCtrl5 = this.liveSettingCtrl;
            BeautyMode beautyMode5 = BeautyMode.CHIN_LENGTH;
            boolean zO5 = liveSettingCtrl5.o(beautyMode5);
            this.is_chin_length_enabled = zO5;
            this.chin_length_intensity = zO5 ? this.liveSettingCtrl.k(beautyMode5) : 0;
            LiveSettingCtrl liveSettingCtrl6 = this.liveSettingCtrl;
            BeautyMode beautyMode6 = BeautyMode.CHIN_RESHAPE;
            boolean zO6 = liveSettingCtrl6.o(beautyMode6);
            LiveSettingCtrl liveSettingCtrl7 = this.liveSettingCtrl;
            BeautyMode beautyMode7 = BeautyMode.CHIN_RESHAPE_LEFT;
            boolean zO7 = liveSettingCtrl7.o(beautyMode7);
            LiveSettingCtrl liveSettingCtrl8 = this.liveSettingCtrl;
            BeautyMode beautyMode8 = BeautyMode.CHIN_RESHAPE_RIGHT;
            boolean zO8 = liveSettingCtrl8.o(beautyMode8);
            if (!zO6 && !zO7 && !zO8) {
                z = false;
            }
            this.is_chin_reshape_enabled = z;
            this.chin_reshape_intensity = zO6 ? this.liveSettingCtrl.k(beautyMode6) : 0;
            this.chin_reshape_left_intensity = zO7 ? this.liveSettingCtrl.k(beautyMode7) : 0;
            this.chin_reshape_right_intensity = zO8 ? this.liveSettingCtrl.k(beautyMode8) : 0;
            LiveSettingCtrl liveSettingCtrl9 = this.liveSettingCtrl;
            BeautyMode beautyMode9 = BeautyMode.FACE_WIDTH;
            boolean zO9 = liveSettingCtrl9.o(beautyMode9);
            this.is_face_width_enabled = zO9;
            this.face_width_intensity = zO9 ? this.liveSettingCtrl.k(beautyMode9) : 0;
            LiveSettingCtrl liveSettingCtrl10 = this.liveSettingCtrl;
            BeautyMode beautyMode10 = BeautyMode.FACE_JAW;
            boolean zO10 = liveSettingCtrl10.o(beautyMode10);
            this.is_jaw_enabled = zO10;
            this.jaw_intensity = zO10 ? this.liveSettingCtrl.k(beautyMode10) : 0;
        }

        private void updateLip() {
            LiveSettingCtrl liveSettingCtrl = this.liveSettingCtrl;
            BeautyMode beautyMode = BeautyMode.LIP_HEIGHT;
            boolean zO = liveSettingCtrl.o(beautyMode);
            LiveSettingCtrl liveSettingCtrl2 = this.liveSettingCtrl;
            BeautyMode beautyMode2 = BeautyMode.LIP_HEIGHT_UPPER;
            boolean zO2 = liveSettingCtrl2.o(beautyMode2);
            LiveSettingCtrl liveSettingCtrl3 = this.liveSettingCtrl;
            BeautyMode beautyMode3 = BeautyMode.LIP_HEIGHT_LOWER;
            boolean zO3 = liveSettingCtrl3.o(beautyMode3);
            this.is_mouth_height_enabled = zO || zO2 || zO3;
            this.mouth_height_intensity = zO ? this.liveSettingCtrl.k(beautyMode) : 0;
            this.mouth_height_upper_intensity = zO2 ? this.liveSettingCtrl.k(beautyMode2) : 0;
            this.mouth_height_lower_intensity = zO3 ? this.liveSettingCtrl.k(beautyMode3) : 0;
            LiveSettingCtrl liveSettingCtrl4 = this.liveSettingCtrl;
            BeautyMode beautyMode4 = BeautyMode.LIP_SIZE;
            boolean zO4 = liveSettingCtrl4.o(beautyMode4);
            this.is_mouth_size_enabled = zO4;
            this.mouth_size_intensity = zO4 ? this.liveSettingCtrl.k(beautyMode4) : 0;
            LiveSettingCtrl liveSettingCtrl5 = this.liveSettingCtrl;
            BeautyMode beautyMode5 = BeautyMode.LIP_WIDTH;
            boolean zO5 = liveSettingCtrl5.o(beautyMode5);
            this.is_mouth_width_enabled = zO5;
            this.mouth_width_intensity = zO5 ? this.liveSettingCtrl.k(beautyMode5) : 0;
            LiveSettingCtrl liveSettingCtrl6 = this.liveSettingCtrl;
            BeautyMode beautyMode6 = BeautyMode.LIP_PEAK;
            boolean zO6 = liveSettingCtrl6.o(beautyMode6);
            this.is_mshaped_lip_enabled = zO6;
            this.mshaped_lip_intensity = zO6 ? this.liveSettingCtrl.k(beautyMode6) : 0;
        }

        private void updateNose() {
            LiveSettingCtrl liveSettingCtrl = this.liveSettingCtrl;
            BeautyMode beautyMode = BeautyMode.NOSE_BRIDGE;
            boolean zO = liveSettingCtrl.o(beautyMode);
            this.is_nose_bridge_width_enabled = zO;
            this.nose_bridge_width_intensity = zO ? this.liveSettingCtrl.k(beautyMode) : 0;
            LiveSettingCtrl liveSettingCtrl2 = this.liveSettingCtrl;
            BeautyMode beautyMode2 = BeautyMode.NOSE_LENGTH;
            boolean zO2 = liveSettingCtrl2.o(beautyMode2);
            this.is_nose_length_enabled = zO2;
            this.nose_length_intensity = zO2 ? this.liveSettingCtrl.k(beautyMode2) : 0;
            LiveSettingCtrl liveSettingCtrl3 = this.liveSettingCtrl;
            BeautyMode beautyMode3 = BeautyMode.NOSE_SIZE;
            boolean zO3 = liveSettingCtrl3.o(beautyMode3);
            this.is_nose_size_enabled = zO3;
            this.nose_size_intensity = zO3 ? this.liveSettingCtrl.k(beautyMode3) : 0;
            LiveSettingCtrl liveSettingCtrl4 = this.liveSettingCtrl;
            BeautyMode beautyMode4 = BeautyMode.NOSE_TIP;
            boolean zO4 = liveSettingCtrl4.o(beautyMode4);
            this.is_nose_tip_enabled = zO4;
            this.nose_tip_intensity = zO4 ? this.liveSettingCtrl.k(beautyMode4) : 0;
            LiveSettingCtrl liveSettingCtrl5 = this.liveSettingCtrl;
            BeautyMode beautyMode5 = BeautyMode.NOSE_WIDTH;
            boolean zO5 = liveSettingCtrl5.o(beautyMode5);
            this.is_nose_tip_width_enabled = zO5;
            this.nose_tip_width_intensity = zO5 ? this.liveSettingCtrl.k(beautyMode5) : 0;
            LiveSettingCtrl liveSettingCtrl6 = this.liveSettingCtrl;
            BeautyMode beautyMode6 = BeautyMode.NOSE_WING;
            boolean zO6 = liveSettingCtrl6.o(beautyMode6);
            this.is_nose_wing_enabled = zO6;
            this.nose_wing_intensity = zO6 ? this.liveSettingCtrl.k(beautyMode6) : 0;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveParameters
        public final void update() {
            updateFace();
            updateEye();
            updateLip();
            updateNose();
        }
    }

    void update();
}
