.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/list/mappers/PersonalSelectionsUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;Ljava/util/Locale;)Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->c:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/mappers/PersonalSelectionsDetailUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;)Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->f:Ljava/lang/String;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v8, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    invoke-static {p1, v6, v7, v8}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->d(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v6, p1

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
