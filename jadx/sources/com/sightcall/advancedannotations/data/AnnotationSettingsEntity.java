package com.sightcall.advancedannotations.data;

import com.google.gson.annotations.SerializedName;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;", "", "settings", "", "Lcom/sightcall/advancedannotations/data/SettingEntity;", "<init>", "(Ljava/util/List;)V", "getSettings", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnnotationSettingsEntity {

    @SerializedName("res")
    private final List<SettingEntity> settings;

    public AnnotationSettingsEntity(List<SettingEntity> list) {
        list.getClass();
        this.settings = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AnnotationSettingsEntity copy$default(AnnotationSettingsEntity annotationSettingsEntity, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = annotationSettingsEntity.settings;
        }
        return annotationSettingsEntity.copy(list);
    }

    public final List<SettingEntity> component1() {
        return this.settings;
    }

    public final AnnotationSettingsEntity copy(List<SettingEntity> settings) {
        settings.getClass();
        return new AnnotationSettingsEntity(settings);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AnnotationSettingsEntity) && Intrinsics.c(this.settings, ((AnnotationSettingsEntity) other).settings);
    }

    public final List<SettingEntity> getSettings() {
        return this.settings;
    }

    public int hashCode() {
        return this.settings.hashCode();
    }

    public String toString() {
        return d21.o("AnnotationSettingsEntity(settings=", ")", this.settings);
    }
}
