.class public Lorg/teleal/cling/binding/staging/MutableDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/teleal/cling/model/types/UDN;

.field public b:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

.field public c:Ljava/net/URL;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/net/URI;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/net/URI;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/net/URI;

.field public final o:Ljava/util/ArrayList;

.field public p:Lorg/teleal/cling/model/types/DLNACaps;

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableUDAVersion;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->b:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->s:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/binding/staging/MutableDevice;

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    invoke-virtual {v3, v1, v4, v9}, Lorg/teleal/cling/binding/staging/MutableDevice;->a(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v9, p3

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->a:Lorg/teleal/cling/model/types/UDN;

    iget-object v3, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->d:Ljava/lang/String;

    invoke-static {v3}, Lorg/teleal/cling/model/types/DeviceType;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v3

    new-instance v8, Lorg/teleal/cling/model/meta/DeviceDetails;

    iget-object v10, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->e:Ljava/lang/String;

    iget-object v11, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->t:Ljava/lang/String;

    iget-object v12, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->u:Ljava/lang/String;

    new-instance v13, Lorg/teleal/cling/model/meta/ManufacturerDetails;

    iget-object v5, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->f:Ljava/lang/String;

    iget-object v6, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->g:Ljava/net/URI;

    invoke-direct {v13, v5, v6}, Lorg/teleal/cling/model/meta/ManufacturerDetails;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    new-instance v14, Lorg/teleal/cling/model/meta/ModelDetails;

    iget-object v5, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->h:Ljava/lang/String;

    iget-object v6, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->i:Ljava/lang/String;

    iget-object v15, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->j:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->k:Ljava/net/URI;

    invoke-direct {v14, v5, v6, v15, v2}, Lorg/teleal/cling/model/meta/ModelDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    iget-object v15, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->l:Ljava/lang/String;

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->m:Ljava/lang/String;

    iget-object v5, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->n:Ljava/net/URI;

    iget-object v6, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->o:Ljava/util/ArrayList;

    move-object/from16 v16, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/model/types/DLNADoc;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Lorg/teleal/cling/model/types/DLNADoc;

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->p:Lorg/teleal/cling/model/types/DLNACaps;

    move-object/from16 v19, v2

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v19}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [Lorg/teleal/cling/model/meta/Icon;

    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/binding/staging/MutableIcon;

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lorg/teleal/cling/model/meta/Icon;

    iget-object v13, v10, Lorg/teleal/cling/binding/staging/MutableIcon;->a:Ljava/lang/String;

    iget v14, v10, Lorg/teleal/cling/binding/staging/MutableIcon;->b:I

    iget v15, v10, Lorg/teleal/cling/binding/staging/MutableIcon;->c:I

    iget v6, v10, Lorg/teleal/cling/binding/staging/MutableIcon;->d:I

    iget-object v10, v10, Lorg/teleal/cling/binding/staging/MutableIcon;->e:Ljava/net/URI;

    move/from16 v16, v6

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;)V

    aput-object v12, v5, v9

    move v9, v11

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/meta/Device;->q(I)[Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    iget-object v0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableService;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v2, v1}, Lorg/teleal/cling/binding/staging/MutableService;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    aput-object v2, v6, v0

    move v0, v10

    goto :goto_2

    :cond_2
    move-object v0, v1

    move-object v2, v4

    move-object v4, v8

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;->o(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method
