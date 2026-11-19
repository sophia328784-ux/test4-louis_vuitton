.class public Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;


# instance fields
.field private final status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a()Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->OK:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->status:Ljava/lang/String;

    return-void
.end method
