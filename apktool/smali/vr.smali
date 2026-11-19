.class public final synthetic Lvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DatePickerDefaults;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JI)V
    .locals 0

    const/4 p8, 0x0

    iput p8, p0, Lvr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr;->f:Ljava/lang/Object;

    iput-object p2, p0, Lvr;->g:Ljava/lang/Object;

    iput p3, p0, Lvr;->e:I

    iput-object p4, p0, Lvr;->h:Ljava/lang/Object;

    iput-object p5, p0, Lvr;->c:Ljava/lang/Object;

    iput-wide p6, p0, Lvr;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/style/TextAlign;II)V
    .locals 0

    .line 19
    const/4 p7, 0x1

    iput p7, p0, Lvr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvr;->f:Ljava/lang/Object;

    iput-object p3, p0, Lvr;->g:Ljava/lang/Object;

    iput-wide p4, p0, Lvr;->d:J

    iput-object p6, p0, Lvr;->h:Ljava/lang/Object;

    iput p8, p0, Lvr;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lvr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr;->f:Ljava/lang/Object;

    iput-wide p2, p0, Lvr;->d:J

    iput-object p4, p0, Lvr;->g:Ljava/lang/Object;

    iput-object p5, p0, Lvr;->h:Ljava/lang/Object;

    iput-object p6, p0, Lvr;->c:Ljava/lang/Object;

    iput p7, p0, Lvr;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lvr;->b:I

    iget-object v1, p0, Lvr;->c:Ljava/lang/Object;

    iget-object v2, p0, Lvr;->h:Ljava/lang/Object;

    iget-object v3, p0, Lvr;->g:Ljava/lang/Object;

    iget-object v4, p0, Lvr;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v8, v3

    check-cast v8, Landroidx/compose/material3/ModalBottomSheetProperties;

    move-object v9, v2

    check-cast v9, Landroidx/compose/animation/core/Animatable;

    move-object v10, v1

    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lvr;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-wide v6, p0, Lvr;->d:J

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->a(Lkotlin/jvm/functions/Function0;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/text/style/TextAlign;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x30001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    move-object v2, v3

    iget-wide v3, p0, Lvr;->d:J

    iget v8, p0, Lvr;->e:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/components/components/LVFadingTextKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/style/TextAlign;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v4

    check-cast v0, Landroidx/compose/material3/DatePickerDefaults;

    check-cast v3, Ljava/lang/Long;

    check-cast v2, Landroidx/compose/material3/DatePickerFormatter;

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/material3/DatePickerDefaults;->a:Landroidx/compose/material3/DatePickerDefaults;

    const p1, 0x30c01

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    move-object v1, v3

    move-object v3, v2

    iget v2, p0, Lvr;->e:I

    iget-wide v5, p0, Lvr;->d:J

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/DatePickerDefaults;->a(Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
