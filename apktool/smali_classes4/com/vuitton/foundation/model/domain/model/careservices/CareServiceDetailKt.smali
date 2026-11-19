.class public abstract Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetailKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "domain"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-object v2, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->l:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->m:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->n:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->o:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->q:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->r:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->s:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->t:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->u:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->v:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->w:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->x:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->y:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->z:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->A:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->B:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v1

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->Q:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->R:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->S:Ljava/lang/String;

    const v24, 0x400002

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-object v0, v2

    const/4 v2, 0x0

    const/16 v23, 0x0

    move-object/from16 v26, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v26

    invoke-direct/range {v0 .. v25}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;-><init>(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
