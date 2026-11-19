package com.otaliastudios.cameraview.engine.meter;

import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.CameraBaseEngine;
import com.otaliastudios.cameraview.engine.CameraEngine;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.ActionWrapper;
import com.otaliastudios.cameraview.engine.action.Actions;
import com.otaliastudios.cameraview.engine.action.BaseAction;
import com.otaliastudios.cameraview.engine.metering.Camera2MeteringTransform;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.metering.MeteringRegions;
import com.otaliastudios.cameraview.preview.CameraPreview;
import com.otaliastudios.cameraview.size.Size;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MeterAction extends ActionWrapper {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final CameraLogger f38928j = CameraLogger.a("MeterAction");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f38929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BaseAction f38930f;
    public final MeteringRegions g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CameraEngine f38931h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f38932i;

    public MeterAction(CameraEngine cameraEngine, MeteringRegions meteringRegions, boolean z) {
        this.g = meteringRegions;
        this.f38931h = cameraEngine;
        this.f38932i = z;
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper, com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        CameraLogger cameraLogger = f38928j;
        cameraLogger.b(2, "onStart:", "initializing.");
        List arrayList = new ArrayList();
        MeteringRegions meteringRegions = this.g;
        if (meteringRegions != null) {
            CameraEngine cameraEngine = this.f38931h;
            CameraBaseEngine cameraBaseEngine = (CameraBaseEngine) cameraEngine;
            Angles angles = cameraBaseEngine.D;
            CameraPreview cameraPreview = cameraBaseEngine.g;
            Camera2MeteringTransform camera2MeteringTransform = new Camera2MeteringTransform(angles, new Size(cameraPreview.d, cameraPreview.f39070e), cameraEngine.q(Reference.VIEW), ((CameraBaseEngine) cameraEngine).g.f39069c, actionHolder.i(), actionHolder.a());
            arrayList = meteringRegions.c(camera2MeteringTransform).b(Integer.MAX_VALUE, camera2MeteringTransform);
        }
        boolean z = this.f38932i;
        ExposureMeter exposureMeter = new ExposureMeter(arrayList, z);
        FocusMeter focusMeter = new FocusMeter(arrayList, z);
        WhiteBalanceMeter whiteBalanceMeter = new WhiteBalanceMeter(arrayList, z);
        this.f38929e = Arrays.asList(exposureMeter, focusMeter, whiteBalanceMeter);
        this.f38930f = Actions.c(exposureMeter, focusMeter, whiteBalanceMeter);
        cameraLogger.b(2, "onStart:", "initialized.");
        super.i(actionHolder);
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper
    public final BaseAction n() {
        return this.f38930f;
    }
}
