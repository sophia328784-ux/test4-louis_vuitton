.class public final synthetic Lta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLjava/text/BreakIterator;JJLkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p12, 0x1

    iput p12, p0, Lta;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lta;->d:Ljava/lang/String;

    iput-object p3, p0, Lta;->i:Ljava/lang/Object;

    iput-wide p4, p0, Lta;->e:J

    iput-object p6, p0, Lta;->j:Ljava/lang/Object;

    iput-wide p7, p0, Lta;->f:J

    iput-wide p9, p0, Lta;->g:J

    iput-object p11, p0, Lta;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 23
    const/4 p12, 0x0

    iput p12, p0, Lta;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lta;->d:Ljava/lang/String;

    iput-object p3, p0, Lta;->i:Ljava/lang/Object;

    iput-object p4, p0, Lta;->j:Ljava/lang/Object;

    iput-wide p5, p0, Lta;->e:J

    iput-wide p7, p0, Lta;->f:J

    iput-wide p9, p0, Lta;->g:J

    iput-object p11, p0, Lta;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lta;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Lta;->j:Ljava/lang/Object;

    iget-object v4, v0, Lta;->i:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    move-object v10, v3

    check-cast v10, Ljava/text/BreakIterator;

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget-object v5, v0, Lta;->c:Landroidx/compose/ui/Modifier;

    iget-object v6, v0, Lta;->d:Ljava/lang/String;

    iget-wide v8, v0, Lta;->e:J

    iget-wide v11, v0, Lta;->f:J

    iget-wide v13, v0, Lta;->g:J

    iget-object v15, v0, Lta;->h:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/compose/components/TextWithTypingAnimationKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLjava/text/BreakIterator;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v1, v0, Lta;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lta;->d:Ljava/lang/String;

    iget-wide v5, v0, Lta;->e:J

    iget-wide v7, v0, Lta;->f:J

    iget-wide v9, v0, Lta;->g:J

    iget-object v11, v0, Lta;->h:Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
