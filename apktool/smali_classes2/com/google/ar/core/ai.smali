.class final enum Lcom/google/ar/core/ai;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lcom/google/ar/core/ai;

.field public static final enum B:Lcom/google/ar/core/ai;

.field public static final enum C:Lcom/google/ar/core/ai;

.field public static final enum D:Lcom/google/ar/core/ai;

.field public static final enum E:Lcom/google/ar/core/ai;

.field public static final enum F:Lcom/google/ar/core/ai;

.field private static final synthetic J:[Lcom/google/ar/core/ai;

.field public static final enum a:Lcom/google/ar/core/ai;

.field public static final enum b:Lcom/google/ar/core/ai;

.field public static final enum c:Lcom/google/ar/core/ai;

.field public static final enum d:Lcom/google/ar/core/ai;

.field public static final enum e:Lcom/google/ar/core/ai;

.field public static final enum f:Lcom/google/ar/core/ai;

.field public static final enum g:Lcom/google/ar/core/ai;

.field public static final enum h:Lcom/google/ar/core/ai;

.field public static final enum i:Lcom/google/ar/core/ai;

.field public static final enum j:Lcom/google/ar/core/ai;

.field public static final enum k:Lcom/google/ar/core/ai;

.field public static final enum l:Lcom/google/ar/core/ai;

.field public static final enum m:Lcom/google/ar/core/ai;

.field public static final enum n:Lcom/google/ar/core/ai;

.field public static final enum o:Lcom/google/ar/core/ai;

.field public static final enum p:Lcom/google/ar/core/ai;

.field public static final enum q:Lcom/google/ar/core/ai;

.field public static final enum r:Lcom/google/ar/core/ai;

.field public static final enum s:Lcom/google/ar/core/ai;

.field public static final enum t:Lcom/google/ar/core/ai;

.field public static final enum u:Lcom/google/ar/core/ai;

.field public static final enum v:Lcom/google/ar/core/ai;

.field public static final enum w:Lcom/google/ar/core/ai;

.field public static final enum x:Lcom/google/ar/core/ai;

.field public static final enum y:Lcom/google/ar/core/ai;

.field public static final enum z:Lcom/google/ar/core/ai;


# instance fields
.field final G:I

.field final H:Ljava/lang/Class;

.field final I:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v0, Lcom/google/ar/core/ai;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v3, "SUCCESS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/ai;->a:Lcom/google/ar/core/ai;

    new-instance v1, Lcom/google/ar/core/ai;

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const-class v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ERROR_INVALID_ARGUMENT"

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ar/core/ai;->b:Lcom/google/ar/core/ai;

    new-instance v2, Lcom/google/ar/core/ai;

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v3, 0x2

    const-class v4, Lcom/google/ar/core/exceptions/FatalException;

    const-string v5, "ERROR_FATAL"

    invoke-direct/range {v2 .. v7}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/ai;

    new-instance v3, Lcom/google/ar/core/ai;

    const/4 v8, -0x3

    const/4 v7, 0x0

    const/4 v4, 0x3

    const-class v5, Lcom/google/ar/core/exceptions/SessionPausedException;

    const-string v6, "ERROR_SESSION_PAUSED"

    invoke-direct/range {v3 .. v8}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/google/ar/core/ai;->d:Lcom/google/ar/core/ai;

    new-instance v4, Lcom/google/ar/core/ai;

    const/4 v9, -0x4

    const/4 v8, 0x0

    const/4 v5, 0x4

    const-class v6, Lcom/google/ar/core/exceptions/SessionNotPausedException;

    const-string v7, "ERROR_SESSION_NOT_PAUSED"

    invoke-direct/range {v4 .. v9}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/google/ar/core/ai;->e:Lcom/google/ar/core/ai;

    new-instance v5, Lcom/google/ar/core/ai;

    const/4 v10, -0x5

    const/4 v9, 0x0

    const/4 v6, 0x5

    const-class v7, Lcom/google/ar/core/exceptions/NotTrackingException;

    const-string v8, "ERROR_NOT_TRACKING"

    invoke-direct/range {v5 .. v10}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/google/ar/core/ai;->f:Lcom/google/ar/core/ai;

    new-instance v6, Lcom/google/ar/core/ai;

    const/4 v11, -0x6

    const/4 v10, 0x0

    const/4 v7, 0x6

    const-class v8, Lcom/google/ar/core/exceptions/TextureNotSetException;

    const-string v9, "ERROR_TEXTURE_NOT_SET"

    invoke-direct/range {v6 .. v11}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/google/ar/core/ai;->g:Lcom/google/ar/core/ai;

    new-instance v7, Lcom/google/ar/core/ai;

    const/4 v12, -0x7

    const/4 v11, 0x0

    const/4 v8, 0x7

    const-class v9, Lcom/google/ar/core/exceptions/MissingGlContextException;

    const-string v10, "ERROR_MISSING_GL_CONTEXT"

    invoke-direct/range {v7 .. v12}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lcom/google/ar/core/ai;->h:Lcom/google/ar/core/ai;

    new-instance v8, Lcom/google/ar/core/ai;

    const-class v10, Lcom/google/ar/core/exceptions/UnsupportedConfigurationException;

    const/4 v12, 0x0

    const/16 v9, 0x8

    const-string v11, "ERROR_UNSUPPORTED_CONFIGURATION"

    const/4 v13, -0x8

    invoke-direct/range {v8 .. v13}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lcom/google/ar/core/ai;->i:Lcom/google/ar/core/ai;

    new-instance v9, Lcom/google/ar/core/ai;

    const-class v11, Lcom/google/ar/core/exceptions/FineLocationPermissionNotGrantedException;

    const/4 v13, 0x0

    const/16 v10, 0x9

    const-string v12, "ERROR_FINE_LOCATION_PERMISSION_NOT_GRANTED"

    const/16 v14, -0x15

    invoke-direct/range {v9 .. v14}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Lcom/google/ar/core/ai;->j:Lcom/google/ar/core/ai;

    new-instance v10, Lcom/google/ar/core/ai;

    const-class v12, Lcom/google/ar/core/exceptions/GooglePlayServicesLocationLibraryNotLinkedException;

    const/4 v14, 0x0

    const/16 v11, 0xa

    const-string v13, "ERROR_GOOGLE_PLAY_SERVICES_LOCATION_LIBRARY_NOT_LINKED"

    const/16 v15, -0x16

    invoke-direct/range {v10 .. v15}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Lcom/google/ar/core/ai;->k:Lcom/google/ar/core/ai;

    new-instance v11, Lcom/google/ar/core/ai;

    const-class v13, Ljava/lang/SecurityException;

    const-string v15, "Camera permission is not granted"

    const/16 v12, 0xb

    const-string v14, "ERROR_CAMERA_PERMISSION_NOT_GRANTED"

    const/16 v16, -0x9

    invoke-direct/range {v11 .. v16}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v11, Lcom/google/ar/core/ai;->l:Lcom/google/ar/core/ai;

    new-instance v12, Lcom/google/ar/core/ai;

    const-class v14, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    const/16 v16, 0x0

    const/16 v13, 0xc

    const-string v15, "ERROR_DEADLINE_EXCEEDED"

    const/16 v17, -0xa

    invoke-direct/range {v12 .. v17}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Lcom/google/ar/core/ai;->m:Lcom/google/ar/core/ai;

    new-instance v13, Lcom/google/ar/core/ai;

    const-class v15, Lcom/google/ar/core/exceptions/ResourceExhaustedException;

    const/16 v17, 0x0

    const/16 v14, 0xd

    const-string v16, "ERROR_RESOURCE_EXHAUSTED"

    const/16 v18, -0xb

    invoke-direct/range {v13 .. v18}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Lcom/google/ar/core/ai;->n:Lcom/google/ar/core/ai;

    new-instance v14, Lcom/google/ar/core/ai;

    const-class v16, Lcom/google/ar/core/exceptions/NotYetAvailableException;

    const/16 v18, 0x0

    const/16 v15, 0xe

    const-string v17, "ERROR_NOT_YET_AVAILABLE"

    const/16 v19, -0xc

    invoke-direct/range {v14 .. v19}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Lcom/google/ar/core/ai;->o:Lcom/google/ar/core/ai;

    new-instance v16, Lcom/google/ar/core/ai;

    const-class v17, Lcom/google/ar/core/exceptions/CameraNotAvailableException;

    const/16 v19, 0x0

    move-object/from16 v15, v16

    const/16 v16, 0xf

    const-string v18, "ERROR_CAMERA_NOT_AVAILABLE"

    const/16 v20, -0xd

    invoke-direct/range {v15 .. v20}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v15, Lcom/google/ar/core/ai;->p:Lcom/google/ar/core/ai;

    new-instance v16, Lcom/google/ar/core/ai;

    const-class v18, Lcom/google/ar/core/exceptions/AnchorNotSupportedForHostingException;

    const/16 v20, 0x0

    const/16 v17, 0x10

    const-string v19, "ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING"

    const/16 v21, -0x10

    invoke-direct/range {v16 .. v21}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v16, Lcom/google/ar/core/ai;->q:Lcom/google/ar/core/ai;

    new-instance v17, Lcom/google/ar/core/ai;

    const-class v19, Lcom/google/ar/core/exceptions/ImageInsufficientQualityException;

    const/16 v21, 0x0

    const/16 v18, 0x11

    const-string v20, "ERROR_IMAGE_INSUFFICIENT_QUALITY"

    const/16 v22, -0x11

    invoke-direct/range {v17 .. v22}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v17, Lcom/google/ar/core/ai;->r:Lcom/google/ar/core/ai;

    new-instance v18, Lcom/google/ar/core/ai;

    const-class v20, Lcom/google/ar/core/exceptions/DataInvalidFormatException;

    const/16 v22, 0x0

    const/16 v19, 0x12

    const-string v21, "ERROR_DATA_INVALID_FORMAT"

    const/16 v23, -0x12

    invoke-direct/range {v18 .. v23}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v18, Lcom/google/ar/core/ai;->s:Lcom/google/ar/core/ai;

    new-instance v19, Lcom/google/ar/core/ai;

    const-class v21, Lcom/google/ar/core/exceptions/DataUnsupportedVersionException;

    const/16 v23, 0x0

    const/16 v20, 0x13

    const-string v22, "ERROR_DATA_UNSUPPORTED_VERSION"

    const/16 v24, -0x13

    invoke-direct/range {v19 .. v24}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v19, Lcom/google/ar/core/ai;->t:Lcom/google/ar/core/ai;

    new-instance v20, Lcom/google/ar/core/ai;

    const-class v22, Ljava/lang/IllegalStateException;

    const/16 v24, 0x0

    const/16 v21, 0x14

    const-string v23, "ERROR_ILLEGAL_STATE"

    const/16 v25, -0x14

    invoke-direct/range {v20 .. v25}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v20, Lcom/google/ar/core/ai;->u:Lcom/google/ar/core/ai;

    new-instance v21, Lcom/google/ar/core/ai;

    const-class v23, Lcom/google/ar/core/exceptions/RecordingFailedException;

    const/16 v25, 0x0

    const/16 v22, 0x15

    const-string v24, "ERROR_RECORDING_FAILED"

    const/16 v26, -0x17

    invoke-direct/range {v21 .. v26}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v21, Lcom/google/ar/core/ai;->v:Lcom/google/ar/core/ai;

    new-instance v22, Lcom/google/ar/core/ai;

    const-class v24, Lcom/google/ar/core/exceptions/PlaybackFailedException;

    const/16 v26, 0x0

    const/16 v23, 0x16

    const-string v25, "ERROR_PLAYBACK_FAILED"

    const/16 v27, -0x18

    invoke-direct/range {v22 .. v27}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v22, Lcom/google/ar/core/ai;->w:Lcom/google/ar/core/ai;

    new-instance v23, Lcom/google/ar/core/ai;

    const-class v25, Lcom/google/ar/core/exceptions/SessionUnsupportedException;

    const/16 v27, 0x0

    const/16 v24, 0x17

    const-string v26, "ERROR_SESSION_UNSUPPORTED"

    const/16 v28, -0x19

    invoke-direct/range {v23 .. v28}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v23, Lcom/google/ar/core/ai;->x:Lcom/google/ar/core/ai;

    new-instance v24, Lcom/google/ar/core/ai;

    const-class v26, Lcom/google/ar/core/exceptions/MetadataNotFoundException;

    const/16 v28, 0x0

    const/16 v25, 0x18

    const-string v27, "ERROR_METADATA_NOT_FOUND"

    const/16 v29, -0x1a

    invoke-direct/range {v24 .. v29}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v24, Lcom/google/ar/core/ai;->y:Lcom/google/ar/core/ai;

    new-instance v25, Lcom/google/ar/core/ai;

    const-class v27, Lcom/google/ar/core/exceptions/CloudAnchorsNotConfiguredException;

    const/16 v29, 0x0

    const/16 v26, 0x19

    const-string v28, "ERROR_CLOUD_ANCHORS_NOT_CONFIGURED"

    const/16 v30, -0xe

    invoke-direct/range {v25 .. v30}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v25, Lcom/google/ar/core/ai;->z:Lcom/google/ar/core/ai;

    new-instance v26, Lcom/google/ar/core/ai;

    const-class v28, Ljava/lang/SecurityException;

    const-string v30, "Internet permission is not granted"

    const/16 v27, 0x1a

    const-string v29, "ERROR_INTERNET_PERMISSION_NOT_GRANTED"

    const/16 v31, -0xf

    invoke-direct/range {v26 .. v31}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v26, Lcom/google/ar/core/ai;->A:Lcom/google/ar/core/ai;

    new-instance v27, Lcom/google/ar/core/ai;

    const-class v29, Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException;

    const/16 v31, 0x0

    const/16 v28, 0x1b

    const-string v30, "UNAVAILABLE_ARCORE_NOT_INSTALLED"

    const/16 v32, -0x64

    invoke-direct/range {v27 .. v32}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v27, Lcom/google/ar/core/ai;->B:Lcom/google/ar/core/ai;

    new-instance v28, Lcom/google/ar/core/ai;

    const-class v30, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    const/16 v32, 0x0

    const/16 v29, 0x1c

    const-string v31, "UNAVAILABLE_DEVICE_NOT_COMPATIBLE"

    const/16 v33, -0x65

    invoke-direct/range {v28 .. v33}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v28, Lcom/google/ar/core/ai;->C:Lcom/google/ar/core/ai;

    new-instance v29, Lcom/google/ar/core/ai;

    const-class v31, Lcom/google/ar/core/exceptions/UnavailableApkTooOldException;

    const/16 v33, 0x0

    const/16 v30, 0x1d

    const-string v32, "UNAVAILABLE_APK_TOO_OLD"

    const/16 v34, -0x67

    invoke-direct/range {v29 .. v34}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v29, Lcom/google/ar/core/ai;->D:Lcom/google/ar/core/ai;

    new-instance v30, Lcom/google/ar/core/ai;

    const-class v32, Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException;

    const/16 v34, 0x0

    const/16 v31, 0x1e

    const-string v33, "UNAVAILABLE_SDK_TOO_OLD"

    const/16 v35, -0x68

    invoke-direct/range {v30 .. v35}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v30, Lcom/google/ar/core/ai;->E:Lcom/google/ar/core/ai;

    new-instance v32, Lcom/google/ar/core/ai;

    const-class v33, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    const/16 v35, 0x0

    move-object/from16 v31, v32

    const/16 v32, 0x1f

    const-string v34, "UNAVAILABLE_USER_DECLINED_INSTALLATION"

    const/16 v36, -0x69

    invoke-direct/range {v31 .. v36}, Lcom/google/ar/core/ai;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v31, Lcom/google/ar/core/ai;->F:Lcom/google/ar/core/ai;

    move-object/from16 v32, v31

    move-object/from16 v31, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v32}, [Lcom/google/ar/core/ai;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/ai;->J:[Lcom/google/ar/core/ai;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p5, p0, Lcom/google/ar/core/ai;->G:I

    iput-object p2, p0, Lcom/google/ar/core/ai;->H:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/ar/core/ai;->I:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/ar/core/ai;
    .locals 1

    sget-object v0, Lcom/google/ar/core/ai;->J:[Lcom/google/ar/core/ai;

    invoke-virtual {v0}, [Lcom/google/ar/core/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/ai;

    return-object v0
.end method
