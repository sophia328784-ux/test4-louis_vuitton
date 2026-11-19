.class public final synthetic Lsp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp0;->b:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p2, p0, Lsp0;->c:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    iput-object p3, p0, Lsp0;->d:Ljava/util/List;

    iput-boolean p4, p0, Lsp0;->e:Z

    iput-boolean p5, p0, Lsp0;->f:Z

    iput-boolean p6, p0, Lsp0;->g:Z

    iput-boolean p7, p0, Lsp0;->h:Z

    iput-object p8, p0, Lsp0;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lsp0;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lsp0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lsp0;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lsp0;->m:Lkotlin/jvm/functions/Function0;

    iput p13, p0, Lsp0;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lsp0;->n:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v0, p0, Lsp0;->b:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v1, p0, Lsp0;->c:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    iget-object v2, p0, Lsp0;->d:Ljava/util/List;

    iget-boolean v3, p0, Lsp0;->e:Z

    iget-boolean v4, p0, Lsp0;->f:Z

    iget-boolean v5, p0, Lsp0;->g:Z

    iget-boolean v6, p0, Lsp0;->h:Z

    iget-object v7, p0, Lsp0;->i:Lkotlin/jvm/functions/Function2;

    iget-object v8, p0, Lsp0;->j:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lsp0;->k:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lsp0;->l:Lkotlin/jvm/functions/Function0;

    iget-object v11, p0, Lsp0;->m:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
