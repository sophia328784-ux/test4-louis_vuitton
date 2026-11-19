.class public final synthetic Li70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic h:I

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function0;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li70;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Li70;->c:Ljava/lang/String;

    iput-object p3, p0, Li70;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Li70;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Li70;->f:Ljava/lang/String;

    iput-object p6, p0, Li70;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p7, p0, Li70;->h:I

    iput-object p8, p0, Li70;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Li70;->j:Ljava/lang/String;

    iput p10, p0, Li70;->k:I

    iput p11, p0, Li70;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Li70;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Li70;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Li70;->c:Ljava/lang/String;

    iget-object v2, p0, Li70;->d:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Li70;->e:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Li70;->f:Ljava/lang/String;

    iget-object v5, p0, Li70;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v6, p0, Li70;->h:I

    iget-object v7, p0, Li70;->i:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Li70;->j:Ljava/lang/String;

    iget v11, p0, Li70;->l:I

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
