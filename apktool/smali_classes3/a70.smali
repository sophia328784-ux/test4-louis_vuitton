.class public final synthetic La70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Landroidx/compose/animation/core/TweenSpec;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIIJJLandroidx/compose/animation/core/TweenSpec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La70;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, La70;->c:I

    iput p3, p0, La70;->d:I

    iput p4, p0, La70;->e:I

    iput-wide p5, p0, La70;->f:J

    iput-wide p7, p0, La70;->g:J

    iput-object p9, p0, La70;->h:Landroidx/compose/animation/core/TweenSpec;

    iput p10, p0, La70;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, La70;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, La70;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, La70;->c:I

    iget v2, p0, La70;->d:I

    iget v3, p0, La70;->e:I

    iget-wide v4, p0, La70;->f:J

    iget-wide v6, p0, La70;->g:J

    iget-object v8, p0, La70;->h:Landroidx/compose/animation/core/TweenSpec;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVProgressIndicatorKt;->a(Landroidx/compose/ui/Modifier;IIIJJLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
