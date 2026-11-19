package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Range;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.arch.core.util.Function;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.navigationevent.OnBackCompletedFallback;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.GlInvalidator;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.dynatrace.android.agent.util.Utility;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.ListenableFuture;
import com.otaliastudios.cameraview.FileCallback;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PupilData;
import com.perfectcorp.perfectlib.PupilQualityCheck;
import com.perfectcorp.perfectlib.QualityCheck;
import com.perfectcorp.perfectlib.internal.FramebufferRendererImpl;
import com.perfectcorp.perfectlib.makeupcam.camera.EstimatedPDInfo;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.MakeupCheckResult;
import com.perfectcorp.perfectlib.makeupcam.camera.TrafficLightCheckResult;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import com.sightcall.mediacapture.presenter.MediaCaptureLifecycleObserver;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import java.io.File;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fw implements Function, ListenerSet.Event, BinarySearchSeeker.SeekTimestampConverter, ReorderingBufferQueue.OutputConsumer, GlInvalidator, OnSuccessListener, ActivityResultCallback, FileCallback, InputConnectionCompat.OnCommitContentListener, AttributeSanitizer, AsyncFunction, CallbackToFutureAdapter.Resolver, OnFailureListener, com.perfectcorp.thirdparty.io.reactivex.functions.Function, LiveMakeupCtrl.QualityCheckCallback, LiveMakeupCtrl.PupilAnalysisCallback, MaterialShapeDrawable.OnCornerSizeChangeListener, ImageReaderProxy.OnImageAvailableListener, Maps.EntryTransformer, OnBackCompletedFallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69221c;

    public /* synthetic */ fw(Object obj, int i2) {
        this.f69220b = i2;
        this.f69221c = obj;
    }

    @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
    public long a(long j2) {
        FlacStreamMetadata flacStreamMetadata = (FlacStreamMetadata) this.f69221c;
        return Util.k((j2 * ((long) flacStreamMetadata.f16153e)) / 1000000, 0L, flacStreamMetadata.f16157j - 1);
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public Object mo0apply(Object obj) {
        int i2 = this.f69220b;
        Object obj2 = this.f69221c;
        switch (i2) {
            case 0:
                long jLongValue = ((Long) obj).longValue();
                Range range = EncoderImpl.H;
                return Long.valueOf(((EncoderImpl) obj2).r(jLongValue));
            case 16:
                return ((LookHandler) obj2).f((String) obj);
            default:
                String str = (String) obj;
                Uninterruptibles.b(((MakeupCam) obj2).f39678e.f40751a.f40722k);
                return str;
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        int i2 = this.f69220b;
        Object obj2 = this.f69221c;
        switch (i2) {
            case 8:
                HotelFormFragment.p((HotelFormFragment) obj2, (ActivityResult) obj);
                break;
            case 22:
                MediaCaptureLifecycleObserver.onCreate$lambda$0((MediaCaptureLifecycleObserver) obj2, (Uri) obj);
                break;
            default:
                OsaActivity.I((OsaActivity) obj2, (ActivityResult) obj);
                break;
        }
    }

    @Override // com.google.common.collect.Maps.EntryTransformer
    public Object c(Object obj, Object obj2) {
        return ((uh) this.f69221c).apply(obj2);
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void d(ImageReaderProxy imageReaderProxy) {
        MetadataImageReader metadataImageReader = (MetadataImageReader) this.f69221c;
        synchronized (metadataImageReader.f1937a) {
            metadataImageReader.f1939c++;
        }
        metadataImageReader.j(imageReaderProxy);
    }

    @Override // com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer
    public JsonAttribute e(JsonAttribute jsonAttribute) {
        AttributeRetentionRule[] attributeRetentionRuleArr = (AttributeRetentionRule[]) this.f69221c;
        Regex regex = JsonAttributeSanitationKt.f26788a;
        for (AttributeRetentionRule attributeRetentionRule : attributeRetentionRuleArr) {
            if (attributeRetentionRule.a(jsonAttribute)) {
                return jsonAttribute;
            }
        }
        Utility.b("sanitation: key '" + jsonAttribute.f26786a + "' is outside of allowed namespace and thus dropped");
        return null;
    }

    @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
    public void f(long j2, ParsableByteArray parsableByteArray) {
        CeaUtil.a(j2, parsableByteArray, ((FragmentedMp4Extractor) this.f69221c).L);
    }

    @Override // androidx.navigationevent.OnBackCompletedFallback
    public void g() {
        Runnable runnable = ((OnBackPressedDispatcher) this.f69221c).f677a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable.OnCornerSizeChangeListener
    public void h(float f2) {
        MaterialButton materialButton = (MaterialButton) this.f69221c;
        int i2 = (int) (f2 * 0.11f);
        if (materialButton.v != i2) {
            materialButton.v = i2;
            materialButton.j();
            materialButton.invalidate();
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        LiveDataObservable liveDataObservable = (LiveDataObservable) this.f69221c;
        CameraXExecutors.c().execute(new jr(liveDataObservable, completer, 28));
        return liveDataObservable + " [fetch@" + SystemClock.uptimeMillis() + "]";
    }

    @Override // com.cyberlink.clgpuimage.GlInvalidator
    public void invalidate() {
        int i2 = this.f69220b;
        Object obj = this.f69221c;
        switch (i2) {
            case 5:
                float[] fArr = GPUImageRenderer.M;
                ((CameraView) obj).requestRender();
                break;
            default:
                FramebufferRendererImpl framebufferRendererImpl = (FramebufferRendererImpl) obj;
                framebufferRendererImpl.f40361i.onDirty(framebufferRendererImpl);
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f69220b;
        Object obj2 = this.f69221c;
        switch (i2) {
            case 1:
                ((Player.Listener) obj).B((CueGroup) obj2);
                break;
            case 2:
                ((Player.Listener) obj).C((Metadata) obj2);
                break;
            case 23:
                ((Player.Listener) obj).R((TrackSelectionParameters) obj2);
                break;
            case 24:
                ((Player.Listener) obj).i0((AudioAttributes) obj2);
                break;
            default:
                ((Player.Listener) obj).o0((MediaMetadata) obj2);
                break;
        }
    }

    @Override // com.otaliastudios.cameraview.FileCallback
    public void j() {
        ImagePickerFragment imagePickerFragment = (ImagePickerFragment) this.f69221c;
        FragmentActivity activity = imagePickerFragment.getActivity();
        if (activity != null) {
            Intent intent = new Intent();
            File file = imagePickerFragment.G;
            if (file == null) {
                Intrinsics.h("file");
                throw null;
            }
            activity.setResult(-1, intent.putExtra("IMAGE_RESULT", Uri.fromFile(file).toString()));
            activity.finish();
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl.PupilAnalysisCallback
    public void onAnalyze(EstimatedPDInfo estimatedPDInfo, TrafficLightCheckResult trafficLightCheckResult) {
        PfCommons.c(new b5((MakeupCam.PupilAnalysisCallback) this.f69221c, new PupilData(estimatedPDInfo), new PupilQualityCheck(trafficLightCheckResult), 16));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        ((Function0) this.f69221c).mo47invoke();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        int i2 = this.f69220b;
        Object obj2 = this.f69221c;
        switch (i2) {
            case 6:
                ((gv) obj2).invoke(obj);
                break;
            case 7:
                ((k0) obj2).invoke(obj);
                break;
            default:
                ((em) obj2).invoke(obj);
                break;
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl.QualityCheckCallback
    public void onAnalyze(MakeupCheckResult makeupCheckResult) {
        PfCommons.c(new aa0((MakeupCam.QualityCheckCallback) this.f69221c, new QualityCheck(makeupCheckResult), 2));
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public ListenableFuture mo0apply(Object obj) {
        return (ListenableFuture) ((l00) this.f69221c).invoke(obj);
    }
}
