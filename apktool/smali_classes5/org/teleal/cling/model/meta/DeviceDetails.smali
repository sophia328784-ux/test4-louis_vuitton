.class public Lorg/teleal/cling/model/meta/DeviceDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field public static final j:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/teleal/cling/model/meta/ManufacturerDetails;

.field public final d:Lorg/teleal/cling/model/meta/ModelDetails;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/net/URI;

.field public final h:[Lorg/teleal/cling/model/types/DLNADoc;

.field public final i:Lorg/teleal/cling/model/types/DLNACaps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/DeviceDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/DeviceDetails;->j:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 60
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p4

    .line 49
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 50
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 43
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 45
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 47
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    invoke-static/range {p8 .. p8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 56
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-static/range {p8 .. p8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 58
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 53
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 54
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 48
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/net/URI;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p6

    .line 51
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 52
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 46
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 44
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    .line 42
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 59
    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->a:Ljava/net/URL;

    iput-object p2, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->b:Ljava/lang/String;

    if-nez p5, :cond_0

    new-instance p5, Lorg/teleal/cling/model/meta/ManufacturerDetails;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    :cond_0
    iput-object p5, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->c:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    if-nez p6, :cond_1

    new-instance p6, Lorg/teleal/cling/model/meta/ModelDetails;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    :cond_1
    iput-object p6, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->d:Lorg/teleal/cling/model/meta/ModelDetails;

    iput-object p7, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->e:Ljava/lang/String;

    iput-object p8, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->f:Ljava/lang/String;

    iput-object p9, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->g:Ljava/net/URI;

    if-eqz p10, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p10, p1, [Lorg/teleal/cling/model/types/DLNADoc;

    :goto_0
    iput-object p10, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->h:[Lorg/teleal/cling/model/types/DLNADoc;

    iput-object p11, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->i:Lorg/teleal/cling/model/types/DLNACaps;

    return-void
.end method
