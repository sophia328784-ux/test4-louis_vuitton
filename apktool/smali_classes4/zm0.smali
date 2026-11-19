.class public final synthetic Lzm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/util/Map;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/product/universal/VariationType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzm0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lzm0;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lzm0;->d:Z

    iput-boolean p4, p0, Lzm0;->e:Z

    iput-object p5, p0, Lzm0;->f:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    iput-object p6, p0, Lzm0;->g:Ljava/util/List;

    iput-object p7, p0, Lzm0;->h:Ljava/util/Map;

    iput-object p8, p0, Lzm0;->i:Ljava/lang/String;

    iput-object p9, p0, Lzm0;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lzm0;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lzm0;->l:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Lzm0;->m:Lkotlin/jvm/functions/Function2;

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

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v0, p0, Lzm0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lzm0;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lzm0;->d:Z

    iget-boolean v3, p0, Lzm0;->e:Z

    iget-object v4, p0, Lzm0;->f:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    iget-object v5, p0, Lzm0;->g:Ljava/util/List;

    iget-object v6, p0, Lzm0;->h:Ljava/util/Map;

    iget-object v7, p0, Lzm0;->i:Ljava/lang/String;

    iget-object v8, p0, Lzm0;->j:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lzm0;->k:Lkotlin/jvm/functions/Function2;

    iget-object v10, p0, Lzm0;->l:Lkotlin/jvm/functions/Function2;

    iget-object v11, p0, Lzm0;->m:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationContainerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/product/universal/VariationType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
