.class public final synthetic Lbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZJFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbh;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lbh;->c:Z

    iput-wide p3, p0, Lbh;->d:J

    iput p5, p0, Lbh;->e:F

    iput p6, p0, Lbh;->f:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lbh;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lbh;->c:Z

    iget-wide v2, p0, Lbh;->d:J

    iget v4, p0, Lbh;->e:F

    iget v5, p0, Lbh;->f:F

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/BottomScrollIndicationKt;->a(Landroidx/compose/ui/Modifier;ZJFFLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
