.class public final synthetic Lc20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLjava/time/Instant;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc20;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc20;->d:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lc20;->e:J

    iput-object p4, p0, Lc20;->h:Ljava/lang/Object;

    iput-object p5, p0, Lc20;->c:Ljava/lang/Object;

    iput p6, p0, Lc20;->f:I

    iput p7, p0, Lc20;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;JIII)V
    .locals 0

    .line 19
    iput p8, p0, Lc20;->b:I

    iput-object p1, p0, Lc20;->h:Ljava/lang/Object;

    iput-object p2, p0, Lc20;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc20;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lc20;->e:J

    iput p6, p0, Lc20;->f:I

    iput p7, p0, Lc20;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lc20;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc20;->h:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/time/Instant;

    iget-object v0, p0, Lc20;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc20;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Lc20;->d:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lc20;->e:J

    iget v8, p0, Lc20;->g:I

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt;->a(Landroidx/compose/ui/Modifier;JLjava/time/Instant;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lc20;->h:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v0, p0, Lc20;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc20;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v3, p0, Lc20;->d:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Lc20;->e:J

    iget v8, p0, Lc20;->g:I

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lc20;->h:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v0, p0, Lc20;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc20;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v3, p0, Lc20;->d:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Lc20;->e:J

    iget v8, p0, Lc20;->g:I

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
