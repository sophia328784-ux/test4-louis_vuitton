.class public Lorg/teleal/cling/model/meta/LocalDevice;
.super Lorg/teleal/cling/model/meta/Device;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/meta/Device<",
        "Lorg/teleal/cling/model/meta/DeviceIdentity;",
        "Lorg/teleal/cling/model/meta/LocalDevice;",
        "Lorg/teleal/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 54
    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 55
    iput-object p4, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 32
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object p5

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 34
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object p5

    filled-new-array {p6}, [Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object p6

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 36
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 40
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 20
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    const/4 p0, 0x0

    .line 21
    iput-object p0, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 42
    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object p5

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 44
    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object p5

    filled-new-array {p6}, [Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object p6

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 50
    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    const/4 p0, 0x0

    .line 29
    iput-object p0, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 30
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    const/4 p0, 0x0

    .line 31
    iput-object p0, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 38
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object v4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 39
    iput-object p3, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 22
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 23
    iput-object p3, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 24
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 25
    iput-object p3, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 46
    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p6}, [Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 47
    iput-object p3, v0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/teleal/cling/model/resource/DeviceDescriptorResource;

    invoke-virtual {p1, p0}, Lorg/teleal/cling/model/Namespace;->a(Lorg/teleal/cling/model/meta/LocalDevice;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/teleal/cling/model/resource/DeviceDescriptorResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalDevice;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/teleal/cling/model/meta/Device;->f:[Lorg/teleal/cling/model/meta/Service;

    if-eqz v2, :cond_1

    check-cast v2, [Lorg/teleal/cling/model/meta/LocalService;

    goto :goto_0

    :cond_1
    new-array v2, v1, [Lorg/teleal/cling/model/meta/LocalService;

    :goto_0
    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    new-instance v6, Lorg/teleal/cling/model/resource/ServiceDescriptorResource;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/Namespace;->d(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/desc.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/teleal/cling/model/resource/ServiceDescriptorResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalService;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/teleal/cling/model/resource/ServiceControlResource;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/Namespace;->d(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/action"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/teleal/cling/model/resource/ServiceControlResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalService;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/Namespace;->b(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalService;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/teleal/cling/model/meta/Device;->e:[Lorg/teleal/cling/model/meta/Icon;

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    new-instance v6, Lorg/teleal/cling/model/resource/IconResource;

    iget-object v7, v5, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Lorg/teleal/cling/model/Namespace;->c(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    :cond_3
    invoke-direct {v6, v7, v5}, Lorg/teleal/cling/model/resource/IconResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/Icon;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->g:[Lorg/teleal/cling/model/meta/Device;

    if-eqz p0, :cond_5

    check-cast p0, [Lorg/teleal/cling/model/meta/LocalDevice;

    goto :goto_3

    :cond_5
    new-array p0, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    :goto_3
    array-length v2, p0

    :goto_4
    if-ge v1, v2, :cond_6

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/meta/LocalDevice;->a(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/teleal/cling/model/resource/Resource;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/teleal/cling/model/resource/Resource;

    return-object p0
.end method

.method public final c(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;
    .locals 0

    invoke-static {p1, p0}, Lorg/teleal/cling/model/meta/Device;->b(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/LocalDevice;

    return-object p0
.end method

.method public final g(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 0

    iget-object p1, p0, Lorg/teleal/cling/model/meta/LocalDevice;->j:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/teleal/cling/model/profile/DeviceDetailsProvider;->a()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    return-object p0
.end method

.method public final i()[Lorg/teleal/cling/model/meta/Device;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->g:[Lorg/teleal/cling/model/meta/Device;

    if-eqz p0, :cond_0

    check-cast p0, [Lorg/teleal/cling/model/meta/LocalDevice;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/teleal/cling/model/meta/LocalDevice;

    return-object p0
.end method

.method public final j()[Lorg/teleal/cling/model/meta/Service;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->f:[Lorg/teleal/cling/model/meta/Service;

    if-eqz p0, :cond_0

    check-cast p0, [Lorg/teleal/cling/model/meta/LocalService;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/teleal/cling/model/meta/LocalService;

    return-object p0
.end method

.method public final o(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/Device;
    .locals 2

    check-cast p6, [Lorg/teleal/cling/model/meta/LocalService;

    move-object v0, p0

    new-instance p0, Lorg/teleal/cling/model/meta/LocalDevice;

    move-object v1, p1

    new-instance p1, Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    invoke-direct {p1, v1, v0}, Lorg/teleal/cling/model/meta/DeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;)V

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Lorg/teleal/cling/model/meta/LocalDevice;

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/LocalDevice;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-object p0
.end method

.method public final p(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;
    .locals 0

    new-instance p0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {p0, p1, p2, p6, p7}, Lorg/teleal/cling/model/meta/LocalService;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    return-object p0
.end method

.method public final q(I)[Lorg/teleal/cling/model/meta/Service;
    .locals 0

    new-array p0, p1, [Lorg/teleal/cling/model/meta/LocalService;

    return-object p0
.end method

.method public final r()Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lorg/teleal/cling/model/meta/Device;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Device;->e:[Lorg/teleal/cling/model/meta/Icon;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget-object v4, v4, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    const-string v6, "icons"

    if-eqz v5, :cond_0

    new-instance v5, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local icon URI can not be absolute: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v6, v8}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "../"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local icon URI must not contain \'../\': "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v6, v8}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local icon URI must not start with \'/\': "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v7, v6, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
