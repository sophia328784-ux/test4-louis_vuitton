.class public final synthetic Lf80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic i:Z

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/TagFilterType;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf80;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lf80;->c:Ljava/lang/String;

    iput-object p3, p0, Lf80;->d:Ljava/lang/String;

    iput-object p4, p0, Lf80;->e:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    iput-object p5, p0, Lf80;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lf80;->g:Z

    iput-object p7, p0, Lf80;->h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p8, p0, Lf80;->i:Z

    iput-object p9, p0, Lf80;->j:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Lf80;->k:I

    iput p11, p0, Lf80;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lf80;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lf80;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lf80;->c:Ljava/lang/String;

    iget-object v2, p0, Lf80;->d:Ljava/lang/String;

    iget-object v3, p0, Lf80;->e:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    iget-object v4, p0, Lf80;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lf80;->g:Z

    iget-object v6, p0, Lf80;->h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v7, p0, Lf80;->i:Z

    iget-object v8, p0, Lf80;->j:Lkotlin/jvm/functions/Function0;

    iget v11, p0, Lf80;->l:I

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/TagFilterType;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
