package com.sightcall.session.datasource.reference.v3.switchRole;

import com.sightcall.session.Reference;
import com.sightcall.session.ReferenceUpdate;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstMappersKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002\u001a\u0014\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007*\u00020\u0005H\u0002\u001a\f\u0010\t\u001a\u00020\n*\u00020\u0005H\u0002¨\u0006\u000b"}, d2 = {"toReferenceUpdate", "Lcom/sightcall/session/ReferenceUpdate;", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;", "toUseCase", "Lcom/sightcall/session/ReferenceUpdate$UseCase;", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;", "toButtons", "", "Lcom/sightcall/session/Reference$Button;", "toProvider", "Lcom/sightcall/session/ReferenceUpdate$Provider;", "session_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ReferenceSwitchMappersKt {
    private static final List<Reference.Button> toButtons(ReferenceSwitchResponseEntity.Data.Attributes attributes) {
        List<ReferenceSwitchResponseEntity.Data.Attributes.BarButton> barButtons = attributes.getBarButtons();
        if (barButtons == null) {
            return null;
        }
        List<ReferenceSwitchResponseEntity.Data.Attributes.BarButton> list = barButtons;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ReferenceApiV3ConstMappersKt.toButton(((ReferenceSwitchResponseEntity.Data.Attributes.BarButton) it.next()).getRole()));
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        Reference.Button.HangupCall hangupCall = Reference.Button.HangupCall.INSTANCE;
        if (!arrayList2.contains(hangupCall)) {
            arrayList2.add(hangupCall);
        }
        return arrayList2;
    }

    private static final ReferenceUpdate.Provider toProvider(ReferenceSwitchResponseEntity.Data.Attributes attributes) {
        return new ReferenceUpdate.Provider(attributes.getChatNotificationDisplayTimeout());
    }

    public static final ReferenceUpdate toReferenceUpdate(ReferenceSwitchResponseEntity referenceSwitchResponseEntity) {
        referenceSwitchResponseEntity.getClass();
        ReferenceSwitchResponseEntity.Data.Attributes attributes = referenceSwitchResponseEntity.getData().getAttributes();
        return new ReferenceUpdate(toUseCase(attributes), toProvider(attributes));
    }

    private static final ReferenceUpdate.UseCase toUseCase(ReferenceSwitchResponseEntity.Data.Attributes attributes) {
        Reference.UserRole userRole = ReferenceApiV3ConstMappersKt.toUserRole(attributes.getUserRole());
        Reference.CameraSide cameraSide = ReferenceApiV3ConstMappersKt.toCameraSide(attributes.getStartupCameraSide());
        Boolean startupCamera = attributes.getStartupCamera();
        boolean zBooleanValue = startupCamera != null ? startupCamera.booleanValue() : false;
        Reference.VideoProfile videoProfile = ReferenceApiV3ConstMappersKt.toVideoProfile(attributes.getStartupVideoProfile());
        Boolean startupPointer = attributes.getStartupPointer();
        boolean zBooleanValue2 = startupPointer != null ? startupPointer.booleanValue() : false;
        Boolean startupMicro = attributes.getStartupMicro();
        boolean z = !(startupMicro != null ? startupMicro.booleanValue() : false);
        List<Reference.Button> buttons = toButtons(attributes);
        Boolean barAlwaysVisible = attributes.getBarAlwaysVisible();
        boolean zBooleanValue3 = barAlwaysVisible != null ? barAlwaysVisible.booleanValue() : false;
        Integer chatNotificationDisplayTimeout = attributes.getChatNotificationDisplayTimeout();
        int iIntValue = chatNotificationDisplayTimeout != null ? chatNotificationDisplayTimeout.intValue() : 10;
        Boolean chatQuickBar = attributes.getChatQuickBar();
        boolean zBooleanValue4 = chatQuickBar != null ? chatQuickBar.booleanValue() : false;
        Boolean startupCameraUsb = attributes.getStartupCameraUsb();
        return new ReferenceUpdate.UseCase(userRole, cameraSide, zBooleanValue, videoProfile, zBooleanValue2, z, true, buttons, zBooleanValue3, iIntValue, zBooleanValue4, startupCameraUsb != null ? startupCameraUsb.booleanValue() : false);
    }
}
