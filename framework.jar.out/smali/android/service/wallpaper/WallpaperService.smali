.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DO_ATTACH:I = 0xa

.field private static final DO_DETACH:I = 0x14

.field private static final DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final MSG_TOUCH_EVENT:I = 0x2738

.field private static final MSG_UPDATE_SURFACE:I = 0x2710

.field private static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final MSG_WINDOW_RESIZED:I = 0x272e

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final TAG:Ljava/lang/String; = "WallpaperService"


# instance fields
.field private final mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    .line 959
    return-void
.end method

.method static synthetic access$200(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mCallbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 993
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 975
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 976
    return-void
.end method

.method public abstract onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 980
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 981
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 982
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 985
    return-void
.end method

.method public setCallbackLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 1006
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService;->mCallbackLooper:Landroid/os/Looper;

    .line 1007
    return-void
.end method
