package com.sightcall.universal.agent.recording;

import com.sightcall.universal.model.Session;
import kotlin.Metadata;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"createRecording", "Lcom/sightcall/universal/agent/recording/RecordingV3Request;", "Lcom/sightcall/universal/model/Session;", "toRecordingEntity", "Lcom/sightcall/universal/agent/recording/RecordingV3Entity;", "Lcom/sightcall/universal/agent/recording/RecordingV3Response;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RecordingV3MappersKt {
    public static final RecordingV3Request createRecording(Session session) {
        session.getClass();
        RecordingV3Request.Data.Attributes attributes = new RecordingV3Request.Data.Attributes(session.reference(), Rtcc.instance().stats().realTimePlatformName());
        String strCaseReportId = session.caseReportId();
        RecordingV3Request.Data.Relationships.CaseReport caseReport = strCaseReportId != null ? new RecordingV3Request.Data.Relationships.CaseReport(strCaseReportId) : null;
        String strId = session.usecase.id();
        strId.getClass();
        RecordingV3Request.Data.Relationships.UseCase useCase = new RecordingV3Request.Data.Relationships.UseCase(strId);
        Integer num = session.usecase.productId;
        RecordingV3Request.Data.Relationships.AcdProduct acdProduct = num != null ? new RecordingV3Request.Data.Relationships.AcdProduct(String.valueOf(num.intValue())) : null;
        Integer num2 = session.usecase.languageId;
        RecordingV3Request.Data.Relationships.AcdLanguage acdLanguage = num2 != null ? new RecordingV3Request.Data.Relationships.AcdLanguage(String.valueOf(num2.intValue())) : null;
        Integer num3 = session.usecase.locationId;
        return new RecordingV3Request(new RecordingV3Request.Data(null, attributes, new RecordingV3Request.Data.Relationships(caseReport, useCase, acdProduct, acdLanguage, num3 != null ? new RecordingV3Request.Data.Relationships.AcdLocations(String.valueOf(num3.intValue())) : null), 1, null));
    }

    public static final RecordingV3Entity toRecordingEntity(RecordingV3Response recordingV3Response) {
        recordingV3Response.getClass();
        return new RecordingV3Entity(recordingV3Response.getData().getId(), recordingV3Response.getData().getAttributes().getUrl(), recordingV3Response.getData().getAttributes().getMode());
    }
}
