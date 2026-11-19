.class Lorg/teleal/cling/UpnpServiceImpl$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/UpnpServiceImpl;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/UpnpServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl$1;->this$0:Lorg/teleal/cling/UpnpServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl$1;->this$0:Lorg/teleal/cling/UpnpServiceImpl;

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->d:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->z()V

    return-void
.end method
