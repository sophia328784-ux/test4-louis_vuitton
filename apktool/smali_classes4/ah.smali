.class public final synthetic Lah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(FFFIJLandroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lah;->b:Landroidx/compose/ui/Modifier;

    iput p1, p0, Lah;->c:F

    iput p2, p0, Lah;->d:F

    iput-wide p5, p0, Lah;->e:J

    iput p3, p0, Lah;->f:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x1b1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lah;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lah;->c:F

    iget v2, p0, Lah;->d:F

    iget-wide v3, p0, Lah;->e:J

    iget v5, p0, Lah;->f:F

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/spotlight/components/BottomBarCanvasSpotlightKt;->a(Landroidx/compose/ui/Modifier;FFJFLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
