.class public final synthetic Lkh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;


# virtual methods
.method public final a()Lkotlin/collections/builders/ListBuilder;
    .locals 2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    const-string v0, "characteristics.is_api_reported"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v1}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method
