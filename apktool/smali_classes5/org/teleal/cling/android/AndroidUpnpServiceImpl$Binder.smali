.class public Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/android/AndroidUpnpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/android/AndroidUpnpServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Binder"
.end annotation


# instance fields
.field public final synthetic a:Lorg/teleal/cling/android/AndroidUpnpServiceImpl;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/android/AndroidUpnpServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;->a:Lorg/teleal/cling/android/AndroidUpnpServiceImpl;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/teleal/cling/controlpoint/ControlPointImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;->a:Lorg/teleal/cling/android/AndroidUpnpServiceImpl;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->b:Lorg/teleal/cling/UpnpService;

    check-cast p0, Lorg/teleal/cling/UpnpServiceImpl;

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->b:Lorg/teleal/cling/controlpoint/ControlPointImpl;

    return-object p0
.end method

.method public final b()Lorg/teleal/cling/registry/RegistryImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;->a:Lorg/teleal/cling/android/AndroidUpnpServiceImpl;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->b:Lorg/teleal/cling/UpnpService;

    check-cast p0, Lorg/teleal/cling/UpnpServiceImpl;

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->d:Lorg/teleal/cling/registry/RegistryImpl;

    return-object p0
.end method

.method public final c()Lorg/teleal/cling/UpnpService;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;->a:Lorg/teleal/cling/android/AndroidUpnpServiceImpl;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->b:Lorg/teleal/cling/UpnpService;

    return-object p0
.end method
