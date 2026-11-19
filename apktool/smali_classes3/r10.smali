.class public final synthetic Lr10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJI)V
    .locals 0

    const/4 p8, 0x1

    iput p8, p0, Lr10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr10;->f:Ljava/lang/Object;

    iput-object p2, p0, Lr10;->g:Ljava/lang/Object;

    iput-object p3, p0, Lr10;->c:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lr10;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lr10;->d:Z

    iput-wide p6, p0, Lr10;->e:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 19
    const/4 p8, 0x0

    iput p8, p0, Lr10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lr10;->f:Ljava/lang/Object;

    iput-object p3, p0, Lr10;->g:Ljava/lang/Object;

    iput-boolean p4, p0, Lr10;->d:Z

    iput-wide p5, p0, Lr10;->e:J

    iput-object p7, p0, Lr10;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lr10;->b:I

    iget-object v1, p0, Lr10;->h:Ljava/lang/Object;

    iget-object v2, p0, Lr10;->g:Ljava/lang/Object;

    iget-object v3, p0, Lr10;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v4, v3

    check-cast v4, Landroidx/compose/material3/SliderDefaults;

    move-object v5, v2

    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v7, v1

    check-cast v7, Landroidx/compose/material3/SliderColors;

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    const p1, 0x30001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v6, p0, Lr10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v8, p0, Lr10;->d:Z

    iget-wide v9, p0, Lr10;->e:J

    invoke-virtual/range {v4 .. v12}, Landroidx/compose/material3/SliderDefaults;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lr10;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v3

    iget-boolean v3, p0, Lr10;->d:Z

    iget-wide v4, p0, Lr10;->e:J

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
