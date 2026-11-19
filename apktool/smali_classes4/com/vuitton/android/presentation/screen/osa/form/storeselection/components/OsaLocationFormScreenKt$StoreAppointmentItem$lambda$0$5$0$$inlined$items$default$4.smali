.class public final Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->c:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    if-nez p3, :cond_3

    invoke-interface {v6, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 p4, 0x92

    const/4 v0, 0x1

    if-eq p3, p4, :cond_4

    move p3, v0

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    and-int/2addr p1, v0

    invoke-interface {v6, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const p2, 0x14139a81

    invoke-interface {v6, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget v1, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget v2, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget v4, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v5, 0x4

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object p2

    const-string p3, "osa_appointmentSlot_button"

    invoke-static {p2, p3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->c:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object p4, p3, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->j:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    move-object v1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-interface {v6, p3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p2, :cond_6

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p4, p2, :cond_7

    :cond_6
    new-instance p4, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;)V

    invoke-interface {v6, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v5, p4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
