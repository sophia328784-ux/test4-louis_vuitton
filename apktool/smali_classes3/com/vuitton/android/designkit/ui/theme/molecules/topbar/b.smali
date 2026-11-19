.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    iput p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->e:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v8, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    iget-wide v4, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    const/4 v9, 0x0

    const/16 v10, 0x20

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->c:Ljava/lang/String;

    iget v6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;->e:F

    const/4 v7, 0x0

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVTopBarCommonKt;->a(Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
