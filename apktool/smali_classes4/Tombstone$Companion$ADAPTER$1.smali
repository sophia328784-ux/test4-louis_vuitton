.class public final LTombstone$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTombstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LTombstone;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Tombstone$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LTombstone;",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public final u:Lkotlin/Lazy;

.field public final v:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7

    const/4 v5, 0x0

    const-string v6, "tombstone.proto"

    const-string v3, "type.googleapis.com/Tombstone"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ll31;

    const/16 p1, 0xb

    invoke-direct {p0, p1}, Ll31;-><init>(I)V

    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    iput-object p0, v0, LTombstone$Companion$ADAPTER$1;->u:Lkotlin/Lazy;

    new-instance p0, Ll31;

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Ll31;-><init>(I)V

    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    iput-object p0, v0, LTombstone$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LArchitecture;->ARM32:LArchitecture;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v9

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v28, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move/from16 v20, v13

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move-object/from16 v26, v14

    move-object/from16 v27, v26

    move-object/from16 v13, v28

    move-object/from16 v14, v19

    :goto_0
    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v12

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    sget-object v29, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v2, v12}, Lcom/squareup/wire/ProtoReader;->m(I)V

    :goto_1
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    goto/16 :goto_3

    :pswitch_1
    sget-object v0, LStackHistoryBuffer;->g:LStackHistoryBuffer$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LStackHistoryBuffer$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    :goto_2
    move-object/from16 v30, v5

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, v1, LTombstone$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_3
    :try_start_0
    sget-object v0, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v30, v5

    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->b:I

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    int-to-long v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v12, v5, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v25, v0

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result v0

    move/from16 v24, v0

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, LCrashDetail;->g:LCrashDetail$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LCrashDetail$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result v0

    move/from16 v23, v0

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, LFD;->i:LFD$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LFD$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, LLogBuffer;->g:LLogBuffer$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LLogBuffer$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, LMemoryMapping;->n:LMemoryMapping$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LMemoryMapping$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    iget-object v0, v1, LTombstone$Companion$ADAPTER$1;->u:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, LCause;->g:LCause$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LCause$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    sget-object v0, LSignal;->o:LSignal$Companion$ADAPTER$1;

    invoke-virtual {v0, v2}, LSignal$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_10
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result v0

    move/from16 v22, v0

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result v0

    move/from16 v21, v0

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result v0

    move/from16 v20, v0

    goto :goto_4

    :pswitch_14
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_4

    :pswitch_15
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :pswitch_16
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_4

    :pswitch_17
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    :try_start_1
    sget-object v0, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v28, v0

    :goto_3
    move-object/from16 v14, v31

    move-object/from16 v13, v32

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->b:I

    int-to-long v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v12, v5, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_3

    :goto_4
    move-object/from16 v5, v30

    goto/16 :goto_0

    :cond_0
    move-object/from16 v30, v5

    move-object/from16 v32, v13

    move-object/from16 v31, v14

    invoke-virtual {v2, v9, v10}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object v0

    new-instance v1, LTombstone;

    move-object/from16 v2, v28

    check-cast v2, LArchitecture;

    move-object/from16 v13, v32

    check-cast v13, LArchitecture;

    check-cast v26, LSignal;

    check-cast v27, LStackHistoryBuffer;

    move/from16 v5, v20

    move-object/from16 v20, v7

    move v7, v5

    move/from16 v5, v21

    move-object/from16 v21, v8

    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v10, v18

    move-object/from16 v14, v19

    move/from16 v9, v22

    move/from16 v12, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v27

    move-object/from16 v18, v30

    move-object/from16 v25, v0

    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object v3, v13

    move-object/from16 v6, v17

    move-object/from16 v13, v26

    move-object/from16 v17, v4

    move-object/from16 v4, v31

    invoke-direct/range {v1 .. v25}, LTombstone;-><init>(LArchitecture;LArchitecture;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;ILSignal;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZLStackHistoryBuffer;Lokio/ByteString;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, LTombstone;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, LTombstone;->e:LArchitecture;

    iget-object v1, p2, LTombstone;->p:Ljava/lang/String;

    iget-object v2, p2, LTombstone;->m:Ljava/lang/String;

    iget-object v3, p2, LTombstone;->i:Ljava/lang/String;

    iget-object v4, p2, LTombstone;->h:Ljava/lang/String;

    iget-object v5, p2, LTombstone;->g:Ljava/lang/String;

    sget-object v6, LArchitecture;->ARM32:LArchitecture;

    if-eq v0, v6, :cond_0

    sget-object v7, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p2, LTombstone;->f:LArchitecture;

    if-eq v0, v6, :cond_1

    sget-object v6, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v7, 0x18

    invoke-virtual {v6, p1, v7, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    const-string v0, ""

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v6, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v7, p1, v6, v5}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_2
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x3

    invoke-virtual {v7, p1, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_3
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v7, p1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_4
    iget v3, p2, LTombstone;->j:I

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    if-eqz v3, :cond_5

    const/4 v5, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p1, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_5
    iget v3, p2, LTombstone;->k:I

    if-eqz v3, :cond_6

    const/4 v5, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p1, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_6
    iget v3, p2, LTombstone;->l:I

    if-eqz v3, :cond_7

    const/4 v5, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p1, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v7, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {v7}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v2

    const/16 v3, 0x9

    iget-object v5, p2, LTombstone;->t:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v5}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget v2, p2, LTombstone;->n:I

    if-eqz v2, :cond_9

    const/16 v3, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_9
    iget-object v2, p2, LTombstone;->o:LSignal;

    if-eqz v2, :cond_a

    sget-object v3, LSignal;->o:LSignal$Companion$ADAPTER$1;

    const/16 v5, 0xa

    invoke-virtual {v3, p1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_a
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xe

    invoke-virtual {v7, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_b
    sget-object v0, LCrashDetail;->g:LCrashDetail$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v1, 0x15

    iget-object v2, p2, LTombstone;->u:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, LCause;->g:LCause$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p2, LTombstone;->v:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, LTombstone$Companion$ADAPTER$1;->u:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, LTombstone;->w:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object p0, p0, LTombstone$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    const/16 v0, 0x19

    iget-object v1, p2, LTombstone;->x:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LMemoryMapping;->n:LMemoryMapping$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v0, 0x11

    iget-object v1, p2, LTombstone;->y:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LLogBuffer;->g:LLogBuffer$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v0, 0x12

    iget-object v1, p2, LTombstone;->z:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LFD;->i:LFD$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v0, 0x13

    iget-object v1, p2, LTombstone;->A:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget p0, p2, LTombstone;->q:I

    if-eqz p0, :cond_c

    const/16 v0, 0x16

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_c
    iget-boolean p0, p2, LTombstone;->r:Z

    if-eqz p0, :cond_d

    const/16 v0, 0x17

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_d
    iget-object p0, p2, LTombstone;->s:LStackHistoryBuffer;

    if-eqz p0, :cond_e

    sget-object v0, LStackHistoryBuffer;->g:LStackHistoryBuffer$Companion$ADAPTER$1;

    const/16 v1, 0x1a

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_e
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, LTombstone;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object v0

    iget-object v1, p2, LTombstone;->g:Ljava/lang/String;

    iget-object v2, p2, LTombstone;->h:Ljava/lang/String;

    iget-object v3, p2, LTombstone;->i:Ljava/lang/String;

    iget-object v4, p2, LTombstone;->m:Ljava/lang/String;

    iget-object v5, p2, LTombstone;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    iget-object v0, p2, LTombstone;->s:LStackHistoryBuffer;

    if-eqz v0, :cond_0

    sget-object v6, LStackHistoryBuffer;->g:LStackHistoryBuffer$Companion$ADAPTER$1;

    const/16 v7, 0x1a

    invoke-virtual {v6, p1, v7, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p2, LTombstone;->r:Z

    if-eqz v0, :cond_1

    const/16 v6, 0x17

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    invoke-virtual {v7, p1, v6, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget v0, p2, LTombstone;->q:I

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    if-eqz v0, :cond_2

    const/16 v7, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, p1, v7, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    sget-object v0, LFD;->i:LFD$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v7, 0x13

    iget-object v8, p2, LTombstone;->A:Ljava/util/List;

    invoke-virtual {v0, p1, v7, v8}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object v0, LLogBuffer;->g:LLogBuffer$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v7, 0x12

    iget-object v8, p2, LTombstone;->z:Ljava/util/List;

    invoke-virtual {v0, p1, v7, v8}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object v0, LMemoryMapping;->n:LMemoryMapping$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v7, 0x11

    iget-object v8, p2, LTombstone;->y:Ljava/util/List;

    invoke-virtual {v0, p1, v7, v8}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, LTombstone$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    const/16 v7, 0x19

    iget-object v8, p2, LTombstone;->x:Ljava/util/Map;

    invoke-virtual {v0, p1, v7, v8}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    iget-object p0, p0, LTombstone$Companion$ADAPTER$1;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    const/16 v0, 0x10

    iget-object v7, p2, LTombstone;->w:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v7}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LCause;->g:LCause$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v0, 0xf

    iget-object v7, p2, LTombstone;->v:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v7}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LCrashDetail;->g:LCrashDetail$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v0, 0x15

    iget-object v7, p2, LTombstone;->u:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v7}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    const-string p0, ""

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v0, :cond_3

    const/16 v0, 0xe

    invoke-virtual {v7, p1, v0, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p2, LTombstone;->o:LSignal;

    if-eqz v0, :cond_4

    sget-object v5, LSignal;->o:LSignal$Companion$ADAPTER$1;

    const/16 v8, 0xa

    invoke-virtual {v5, p1, v8, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    iget v0, p2, LTombstone;->n:I

    if-eqz v0, :cond_5

    const/16 v5, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, p1, v5, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v7}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v5, 0x9

    iget-object v8, p2, LTombstone;->t:Ljava/util/List;

    invoke-virtual {v0, p1, v5, v8}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {v7, p1, v0, v4}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_6
    iget v0, p2, LTombstone;->l:I

    if-eqz v0, :cond_7

    const/4 v4, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, p1, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    iget v0, p2, LTombstone;->k:I

    if-eqz v0, :cond_8

    const/4 v4, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, p1, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_8
    iget v0, p2, LTombstone;->j:I

    if-eqz v0, :cond_9

    const/4 v4, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, p1, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_9
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x4

    invoke-virtual {v7, p1, v0, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_a
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x3

    invoke-virtual {v7, p1, v0, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_b
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x2

    invoke-virtual {v7, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_c
    iget-object p0, p2, LTombstone;->f:LArchitecture;

    sget-object v0, LArchitecture;->ARM32:LArchitecture;

    if-eq p0, v0, :cond_d

    sget-object v1, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    invoke-virtual {v1, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_d
    iget-object p0, p2, LTombstone;->e:LArchitecture;

    if-eq p0, v0, :cond_e

    sget-object p2, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 10

    check-cast p1, LTombstone;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object v0

    iget-object v1, p1, LTombstone;->p:Ljava/lang/String;

    iget-object v2, p1, LTombstone;->m:Ljava/lang/String;

    iget-object v3, p1, LTombstone;->i:Ljava/lang/String;

    iget-object v4, p1, LTombstone;->h:Ljava/lang/String;

    iget-object v5, p1, LTombstone;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v0

    iget-object v6, p1, LTombstone;->e:LArchitecture;

    sget-object v7, LArchitecture;->ARM32:LArchitecture;

    if-eq v6, v7, :cond_0

    sget-object v8, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v6}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_0
    iget-object v6, p1, LTombstone;->f:LArchitecture;

    if-eq v6, v7, :cond_1

    sget-object v7, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x18

    invoke-virtual {v7, v8, v6}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_1
    const-string v6, ""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v7, :cond_2

    const/4 v7, 0x2

    invoke-virtual {v8, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_2
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x3

    invoke-virtual {v8, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v8, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    iget v3, p1, LTombstone;->j:I

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    if-eqz v3, :cond_5

    const/4 v5, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    iget v3, p1, LTombstone;->k:I

    if-eqz v3, :cond_6

    const/4 v5, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    iget v3, p1, LTombstone;->l:I

    if-eqz v3, :cond_7

    const/4 v5, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    invoke-virtual {v8}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v2

    const/16 v3, 0x9

    iget-object v5, p1, LTombstone;->t:Ljava/util/List;

    invoke-virtual {v2, v3, v5}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p1, LTombstone;->n:I

    if-eqz v0, :cond_9

    const/16 v3, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    iget-object v0, p1, LTombstone;->o:LSignal;

    if-eqz v0, :cond_a

    sget-object v3, LSignal;->o:LSignal$Companion$ADAPTER$1;

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_a
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xe

    invoke-virtual {v8, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_b
    sget-object v0, LCrashDetail;->g:LCrashDetail$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v1, 0x15

    iget-object v3, p1, LTombstone;->u:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    sget-object v1, LCause;->g:LCause$Companion$ADAPTER$1;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v1

    const/16 v2, 0xf

    iget-object v3, p1, LTombstone;->v:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, LTombstone$Companion$ADAPTER$1;->u:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, LTombstone;->w:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, LTombstone$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p1, LTombstone;->x:Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    sget-object v0, LMemoryMapping;->n:LMemoryMapping$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v1, 0x11

    iget-object v2, p1, LTombstone;->y:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p0

    sget-object p0, LLogBuffer;->g:LLogBuffer$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v1, 0x12

    iget-object v2, p1, LTombstone;->z:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    sget-object v0, LFD;->i:LFD$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v1, 0x13

    iget-object v2, p1, LTombstone;->A:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p0

    iget p0, p1, LTombstone;->q:I

    if-eqz p0, :cond_c

    const/16 v1, 0x16

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_c
    iget-boolean p0, p1, LTombstone;->r:Z

    if-eqz p0, :cond_d

    const/16 v1, 0x17

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    invoke-virtual {v2, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d
    iget-object p0, p1, LTombstone;->s:LStackHistoryBuffer;

    if-eqz p0, :cond_e

    sget-object p1, LStackHistoryBuffer;->g:LStackHistoryBuffer$Companion$ADAPTER$1;

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_e
    return v0
.end method
