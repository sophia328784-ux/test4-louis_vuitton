.class public final Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0002*\u00020\u0004H\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0005*\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "mapToDomain",
        "",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;",
        "Lcom/sightcall/advancedannotations/data/SettingEntity;",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;",
        "",
        "advancedannotations_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$mapToDomain(Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryKt;->mapToDomain(Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final mapToDomain(Ljava/lang/String;)Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;
    .locals 1

    .line 130
    new-instance v0, Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final mapToDomain(Lcom/sightcall/advancedannotations/data/SettingEntity;)Lcom/sightcall/advancedannotations/domain/settings/Setting;
    .locals 8

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getSvgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getPcx()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getPcy()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getSvgs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryKt;->mapToDomain(Ljava/lang/String;)Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getPcx()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getPcy()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v4, v0, v1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/SettingEntity;->getPeriod()Ljava/lang/Long;

    move-result-object v7

    new-instance v1, Lcom/sightcall/advancedannotations/domain/settings/Setting;

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/advancedannotations/domain/settings/Setting;-><init>(Ljava/util/List;FFIILjava/lang/Long;)V

    return-object v1

    :cond_1
    invoke-static {}, Lcom/sightcall/advancedannotations/domain/settings/SettingKt;->getPointerSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object p0

    return-object p0
.end method

.method private static final mapToDomain(Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;->getSettings()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    check-cast v1, Lcom/sightcall/advancedannotations/data/SettingEntity;

    .line 128
    invoke-static {v1}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryKt;->mapToDomain(Lcom/sightcall/advancedannotations/data/SettingEntity;)Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
