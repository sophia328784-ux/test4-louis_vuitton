.class public final synthetic Lp60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic k:I

.field public final synthetic l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardActions;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp60;->b:Ljava/lang/String;

    iput-object p2, p0, Lp60;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lp60;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lp60;->e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p5, p0, Lp60;->f:Z

    iput-object p6, p0, Lp60;->g:Ljava/lang/String;

    iput-boolean p7, p0, Lp60;->h:Z

    iput-object p8, p0, Lp60;->i:Ljava/lang/String;

    iput-object p9, p0, Lp60;->j:Landroidx/compose/foundation/text/KeyboardActions;

    iput p10, p0, Lp60;->k:I

    iput-object p11, p0, Lp60;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p12, p0, Lp60;->m:Lkotlin/jvm/functions/Function1;

    iput p13, p0, Lp60;->n:I

    iput p14, p0, Lp60;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lp60;->n:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v1, v0, Lp60;->b:Ljava/lang/String;

    move-object v2, v1

    iget-object v1, v0, Lp60;->c:Lkotlin/jvm/functions/Function1;

    move-object v3, v2

    iget-object v2, v0, Lp60;->d:Landroidx/compose/ui/Modifier;

    move-object v4, v3

    iget-object v3, v0, Lp60;->e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v5, v4

    iget-boolean v4, v0, Lp60;->f:Z

    move-object v6, v5

    iget-object v5, v0, Lp60;->g:Ljava/lang/String;

    move-object v7, v6

    iget-boolean v6, v0, Lp60;->h:Z

    move-object v8, v7

    iget-object v7, v0, Lp60;->i:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lp60;->j:Landroidx/compose/foundation/text/KeyboardActions;

    move-object v10, v9

    iget v9, v0, Lp60;->k:I

    move-object v11, v10

    iget-object v10, v0, Lp60;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v14, v11

    iget-object v11, v0, Lp60;->m:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lp60;->o:I

    move-object v15, v14

    move v14, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVMultilineTextFieldKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardActions;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
