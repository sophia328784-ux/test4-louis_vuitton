package com.sightcall.capabilities;

import com.google.gson.Gson;
import com.sightcall.capabilities.datasource.rtcc.RtccDatasource;
import com.sightcall.capabilities.datasource.rtcc.entities.CapabilitiesRequestEntity;
import com.sightcall.pratik.extensions.JsonException;
import com.sightcall.pratik.logs.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010 \n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\b\u0010\u001b\u001a\u00020\u0016H\u0016J\b\u0010\u001c\u001a\u00020\u0016H\u0016J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0016J\b\u0010 \u001a\u00020\u0016H\u0016J\b\u0010!\u001a\u00020\u0016H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0016J\b\u0010#\u001a\u00020\u0016H\u0016J\b\u0010$\u001a\u00020\u0016H\u0016J\b\u0010%\u001a\u00020\u0016H\u0016J\b\u0010&\u001a\u00020\u0016H\u0016J\b\u0010'\u001a\u00020\u0016H\u0016J\b\u0010(\u001a\u00020\u0016H\u0016J\b\u0010)\u001a\u00020\u0016H\u0016J\b\u0010*\u001a\u00020\u0016H\u0016J\u0010\u0010+\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u0003H\u0016J(\u0010-\u001a\u00020\u00162\u000e\b\u0002\u0010.\u001a\b\u0012\u0004\u0012\u00020\n0/2\u000e\b\u0002\u00100\u001a\b\u0012\u0004\u0012\u00020\n0/H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;", "Lcom/sightcall/capabilities/CapabilitiesRepository;", "isInstantApp", "", "rtccDatasource", "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;", "<init>", "(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)V", "capabilitiesSet", "", "Lcom/sightcall/capabilities/Capability;", "<set-?>", "", "requestId", "getRequestId", "()Ljava/lang/String;", "setRequestId", "(Ljava/lang/String;)V", "requestId$delegate", "Lkotlin/properties/ReadWriteProperty;", "update", "register", "", "uidLocal", "request", "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;", "cancel", "activateScreenShare", "stopScreenShare", "activateVideo", "stopVideo", "pauseVideo", "resumeVideo", "activateAr", "stopAr", "activateScreencast", "stopScreencast", "activateCoBrowsing", "stopCoBrowsing", "activateCollimator", "stopCollimator", "frontCamera", "backCamera", "setAdvancedAnnotation", "enabled", "updateCapabilities", "add", "", "remove", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CapabilitiesRepositoryImpl implements CapabilitiesRepository {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.f71922a.f(new MutablePropertyReference1Impl(CapabilitiesRepositoryImpl.class, "requestId", "getRequestId()Ljava/lang/String;", 0))};
    private final Set<Capability> capabilitiesSet;
    private final boolean isInstantApp;

    /* JADX INFO: renamed from: requestId$delegate, reason: from kotlin metadata */
    private final ReadWriteProperty requestId;
    private final RtccDatasource rtccDatasource;
    private boolean update;

    @Inject
    public CapabilitiesRepositoryImpl(boolean z, RtccDatasource rtccDatasource) {
        rtccDatasource.getClass();
        this.isInstantApp = z;
        this.rtccDatasource = rtccDatasource;
        this.capabilitiesSet = new CopyOnWriteArraySet();
        Delegates.f71937a.getClass();
        this.requestId = Delegates.a();
    }

    private final String getRequestId() {
        return (String) this.requestId.b(this, $$delegatedProperties[0]);
    }

    private final void register(String uidLocal, CapabilitiesRequestEntity request) {
        String uid = request.getUid();
        if (uid == null || uid.length() == 0 || Intrinsics.c(request.getUid(), uidLocal)) {
            Set<Capability> set = this.capabilitiesSet;
            List listP = CollectionsKt.P(Capability.CoBrowsing.INSTANCE, Capability.GuestSwitch.INSTANCE, Capability.TouchScreen.INSTANCE, Capability.PictureEdition.INSTANCE, Capability.TranslationRemote.INSTANCE, Capability.CaseReportV3.INSTANCE, Capability.ScreenCast.INSTANCE);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listP) {
                Capability capability = (Capability) obj;
                if (!this.isInstantApp || capability.getIsAvailableOnInstantApp()) {
                    arrayList.add(obj);
                }
            }
            set.addAll(arrayList);
            RtccDatasource rtccDatasource = this.rtccDatasource;
            String id = request.getId();
            Set<Capability> set2 = this.capabilitiesSet;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(set2, 10));
            Iterator<T> it = set2.iterator();
            while (it.hasNext()) {
                arrayList2.add(CapabilitiesMappersKt.toRtccCapability((Capability) it.next()));
            }
            rtccDatasource.response(id, arrayList2);
            if (Intrinsics.c(request.getUpdate(), Boolean.FALSE)) {
                return;
            }
            this.update = true;
            setRequestId(request.getId());
        }
    }

    private final void setRequestId(String str) {
        this.requestId.a(str, $$delegatedProperties[0]);
    }

    private final synchronized void updateCapabilities(List<? extends Capability> add, List<? extends Capability> remove) {
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : add) {
                Capability capability = (Capability) obj;
                if (!this.isInstantApp || capability.getIsAvailableOnInstantApp()) {
                    arrayList.add(obj);
                }
            }
            if (this.update) {
                RtccDatasource rtccDatasource = this.rtccDatasource;
                String requestId = getRequestId();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(CapabilitiesMappersKt.toRtccCapability((Capability) it.next()));
                }
                List<? extends Capability> list = remove;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list, 10));
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(CapabilitiesMappersKt.toRtccCapability((Capability) it2.next()));
                }
                rtccDatasource.update(requestId, arrayList2, arrayList3);
            }
            this.capabilitiesSet.addAll(arrayList);
            this.capabilitiesSet.removeAll(remove);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void updateCapabilities$default(CapabilitiesRepositoryImpl capabilitiesRepositoryImpl, List list, List list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = EmptyList.f71768b;
        }
        if ((i2 & 2) != 0) {
            list2 = EmptyList.f71768b;
        }
        capabilitiesRepositoryImpl.updateCapabilities(list, list2);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void activateAr() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.Note.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void activateCoBrowsing() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void activateCollimator() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.ShareFromGallery.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.Note.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE, Capability.Snapshot.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void activateScreenShare() {
        updateCapabilities(CollectionsKt.O(Capability.Note.INSTANCE), CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE));
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void activateScreencast() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.Note.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void activateVideo() {
        updateCapabilities$default(this, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.CameraPause.INSTANCE), null, 2, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void backCamera() {
        updateCapabilities$default(this, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE, Capability.Flashlight.INSTANCE), null, 2, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void cancel() {
        this.update = false;
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void frontCamera() {
        updateCapabilities(CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), CollectionsKt.O(Capability.Flashlight.INSTANCE));
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void pauseVideo() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.Ocr.INSTANCE, Capability.ChangeCamera.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void resumeVideo() {
        updateCapabilities$default(this, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.Ocr.INSTANCE, Capability.ChangeCamera.INSTANCE), null, 2, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void setAdvancedAnnotation(boolean enabled) {
        if (enabled) {
            updateCapabilities$default(this, CollectionsKt.O(Capability.AdvancedAnnotations.INSTANCE), null, 2, null);
        } else {
            updateCapabilities$default(this, null, CollectionsKt.O(Capability.AdvancedAnnotations.INSTANCE), 1, null);
        }
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void stopAr() {
        updateCapabilities$default(this, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.Note.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), null, 2, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void stopCoBrowsing() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void stopCollimator() {
        updateCapabilities$default(this, CollectionsKt.P(Capability.ShareFromGallery.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ScreenCast.INSTANCE, Capability.Note.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE, Capability.Snapshot.INSTANCE), null, 2, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void stopScreenShare() {
        updateCapabilities(CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), CollectionsKt.O(Capability.Note.INSTANCE));
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void stopScreencast() {
        updateCapabilities$default(this, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.ShareFromGallery.INSTANCE, Capability.Ocr.INSTANCE, Capability.CoBrowsing.INSTANCE, Capability.Note.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), null, 2, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void stopVideo() {
        updateCapabilities$default(this, null, CollectionsKt.P(Capability.Snapshot.INSTANCE, Capability.Zoom.INSTANCE, Capability.Flashlight.INSTANCE, Capability.Ocr.INSTANCE, Capability.ChangeCamera.INSTANCE, Capability.CameraPause.INSTANCE), 1, null);
    }

    @Override // com.sightcall.capabilities.CapabilitiesRepository
    public void register(String uidLocal, String request) {
        try {
            try {
                if (request != null) {
                    register(uidLocal, (CapabilitiesRequestEntity) new Gson().fromJson(request, CapabilitiesRequestEntity.class));
                    return;
                }
                throw new IllegalArgumentException("Required value was null.");
            } catch (Exception e2) {
                throw new JsonException("Unable to deserialize: " + request, e2);
            }
        } catch (JsonException unused) {
            Logger.INSTANCE.getTag();
        }
    }
}
