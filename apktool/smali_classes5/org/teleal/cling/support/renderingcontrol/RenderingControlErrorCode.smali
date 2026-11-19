.class public final enum Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

.field public static final enum INVALID_INSTANCE_ID:Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

.field public static final enum INVALID_PRESET_NAME:Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    const/16 v1, 0x2bd

    const-string v2, "The specified name is not a valid preset name"

    const-string v3, "INVALID_PRESET_NAME"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->INVALID_PRESET_NAME:Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    new-instance v1, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    const/16 v2, 0x2be

    const-string v3, "The specified instanceID is invalid for this RenderingControl"

    const-string v4, "INVALID_INSTANCE_ID"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->INVALID_INSTANCE_ID:Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    filled-new-array {v0, v1}, [Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->$VALUES:[Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->code:I

    iput-object p4, p0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->$VALUES:[Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->code:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/renderingcontrol/RenderingControlErrorCode;->description:Ljava/lang/String;

    return-object p0
.end method
