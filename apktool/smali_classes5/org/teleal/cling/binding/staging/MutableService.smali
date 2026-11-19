.class public Lorg/teleal/cling/binding/staging/MutableService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/teleal/cling/model/types/ServiceType;

.field public b:Lorg/teleal/cling/model/types/ServiceId;

.field public c:Ljava/net/URI;

.field public d:Ljava/net/URI;

.field public e:Ljava/net/URI;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableService;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableService;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->a:Lorg/teleal/cling/model/types/ServiceType;

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableService;->b:Lorg/teleal/cling/model/types/ServiceId;

    iget-object v3, v0, Lorg/teleal/cling/binding/staging/MutableService;->c:Ljava/net/URI;

    iget-object v4, v0, Lorg/teleal/cling/binding/staging/MutableService;->d:Ljava/net/URI;

    iget-object v5, v0, Lorg/teleal/cling/binding/staging/MutableService;->e:Ljava/net/URI;

    iget-object v6, v0, Lorg/teleal/cling/binding/staging/MutableService;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lorg/teleal/cling/model/meta/Action;

    iget-object v7, v0, Lorg/teleal/cling/binding/staging/MutableService;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/binding/staging/MutableAction;

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lorg/teleal/cling/model/meta/Action;

    iget-object v13, v10, Lorg/teleal/cling/binding/staging/MutableAction;->a:Ljava/lang/String;

    iget-object v14, v10, Lorg/teleal/cling/binding/staging/MutableAction;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object v10, v10, Lorg/teleal/cling/binding/staging/MutableAction;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lorg/teleal/cling/binding/staging/MutableActionArgument;

    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v1

    new-instance v1, Lorg/teleal/cling/model/meta/ActionArgument;

    move-object/from16 v19, v2

    iget-object v2, v8, Lorg/teleal/cling/binding/staging/MutableActionArgument;->a:Ljava/lang/String;

    move-object/from16 v20, v3

    iget-object v3, v8, Lorg/teleal/cling/binding/staging/MutableActionArgument;->b:Ljava/lang/String;

    move-object/from16 v21, v4

    iget-object v4, v8, Lorg/teleal/cling/binding/staging/MutableActionArgument;->c:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    iget-boolean v8, v8, Lorg/teleal/cling/binding/staging/MutableActionArgument;->d:Z

    invoke-direct {v1, v2, v3, v4, v8}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    aput-object v1, v14, v15

    move/from16 v15, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_1

    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct {v12, v13, v14}, Lorg/teleal/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V

    aput-object v12, v6, v9

    move v9, v11

    goto :goto_0

    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    iget-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v7, v1, [Lorg/teleal/cling/model/meta/StateVariable;

    iget-object v0, v0, Lorg/teleal/cling/binding/staging/MutableService;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v17, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    add-int/lit8 v1, v17, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/teleal/cling/model/meta/StateVariable;

    iget-object v3, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->a:Ljava/lang/String;

    new-instance v4, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iget-object v9, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->b:Lorg/teleal/cling/model/types/Datatype;

    iget-object v10, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->c:Ljava/lang/String;

    iget-object v11, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->d:Ljava/util/ArrayList;

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    iget-object v11, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    goto :goto_4

    :cond_3
    :goto_3
    move-object v11, v12

    :goto_4
    iget-object v13, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->e:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    if-nez v13, :cond_4

    goto :goto_5

    :cond_4
    new-instance v22, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    iget-object v12, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->e:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    iget-object v12, v12, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->a:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    iget-object v12, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->e:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    iget-object v12, v12, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    iget-object v12, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->e:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    iget-object v12, v12, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->c:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-direct/range {v22 .. v28}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    move-object/from16 v12, v22

    :goto_5
    invoke-direct {v4, v9, v10, v11, v12}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    iget-object v0, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->f:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v2, v3, v4, v0}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V

    aput-object v2, v7, v17

    move/from16 v17, v1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;->p(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method
