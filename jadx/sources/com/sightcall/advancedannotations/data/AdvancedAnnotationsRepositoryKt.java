package com.sightcall.advancedannotations.data;

import com.sightcall.advancedannotations.domain.settings.Setting;
import com.sightcall.advancedannotations.domain.settings.SettingKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u0000\u001a\u00020\u0002*\u00020\u0004H\u0002\u001a\f\u0010\u0000\u001a\u00020\u0005*\u00020\u0006H\u0002¨\u0006\u0007"}, d2 = {"mapToDomain", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;", "Lcom/sightcall/advancedannotations/data/SettingEntity;", "Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;", "", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AdvancedAnnotationsRepositoryKt {
    private static final Setting mapToDomain(SettingEntity settingEntity) {
        if (settingEntity.getSvgs() == null || settingEntity.getPcx() == null || settingEntity.getPcy() == null || settingEntity.getWidth() == null || settingEntity.getHeight() == null) {
            return SettingKt.getPointerSetting();
        }
        List<String> svgs = settingEntity.getSvgs();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(svgs, 10));
        Iterator<T> it = svgs.iterator();
        while (it.hasNext()) {
            arrayList.add(mapToDomain((String) it.next()));
        }
        return new Setting(arrayList, settingEntity.getPcx().floatValue() / 100.0f, settingEntity.getPcy().floatValue() / 100.0f, settingEntity.getWidth().intValue(), settingEntity.getHeight().intValue(), settingEntity.getPeriod());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Setting> mapToDomain(AnnotationSettingsEntity annotationSettingsEntity) {
        List<SettingEntity> settings = annotationSettingsEntity.getSettings();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(settings, 10));
        Iterator<T> it = settings.iterator();
        while (it.hasNext()) {
            arrayList.add(mapToDomain((SettingEntity) it.next()));
        }
        return arrayList;
    }

    private static final Setting.SVG mapToDomain(String str) {
        return new Setting.SVG(str);
    }
}
