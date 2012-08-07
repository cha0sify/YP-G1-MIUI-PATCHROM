.class Lcom/android/server/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field codeFileName:Ljava/lang/String;

.field created:Z

.field installDir:Ljava/io/File;

.field libraryPath:Ljava/lang/String;

.field resourceFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "packageURI"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, ".apk"

    .line 5152
    iput-object p1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5153
    invoke-direct {p0, p2, v2, v1, v2}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5136
    iput-boolean v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->created:Z

    .line 5154
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 5155
    const-string v1, ".apk"

    #calls: Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3, v5}, Lcom/android/server/PackageManagerService;->access$2800(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5156
    .local v0, apkName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5157
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5158
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, p4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 5159
    return-void

    .line 5154
    .end local v0           #apkName:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V
    .locals 4
    .parameter
    .parameter "params"

    .prologue
    .line 5138
    iput-object p1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5139
    iget-object v0, p2, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget-object v1, p2, Lcom/android/server/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v2, p2, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    iget-object v3, p2, Lcom/android/server/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->created:Z

    .line 5141
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5143
    iput-object p1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    .line 5144
    invoke-direct {p0, v1, v1, v2, v1}, Lcom/android/server/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 5136
    iput-boolean v2, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->created:Z

    .line 5145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5146
    .local v0, codeFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 5147
    iput-object p2, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5148
    iput-object p3, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5149
    iput-object p4, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 5150
    return-void
.end method

.method private cleanUp()Z
    .locals 9

    .prologue
    const-string v8, "PackageManager"

    const-string v7, " does not exist."

    .line 5283
    const/4 v2, 0x1

    .line 5284
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    .line 5285
    .local v3, sourceDir:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 5286
    .local v0, publicSourceDir:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 5287
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5288
    .local v4, sourceFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5289
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5290
    const/4 v2, 0x0

    .line 5293
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 5295
    .end local v4           #sourceFile:Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5296
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5297
    .local v1, publicSourceFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5298
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package public source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5301
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5304
    .end local v1           #publicSourceFile:Ljava/io/File;
    :cond_3
    return v2
.end method

.method private isFwdLocked()Z
    .locals 1

    .prologue
    .line 5346
    iget v0, p0, Lcom/android/server/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPermissions()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 5322
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5323
    const/16 v0, 0x1a4

    .line 5326
    .local v0, filePermissions:I
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a4

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 5327
    .local v1, retCode:I
    if-eqz v1, :cond_0

    .line 5328
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    const/4 v2, 0x0

    .line 5336
    .end local v0           #filePermissions:I
    .end local v1           #retCode:I
    :goto_0
    return v2

    .restart local v0       #filePermissions:I
    .restart local v1       #retCode:I
    :cond_0
    move v2, v5

    .line 5334
    goto :goto_0

    .end local v0           #filePermissions:I
    .end local v1           #retCode:I
    :cond_1
    move v2, v5

    .line 5336
    goto :goto_0
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 5
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 5163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5165
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/app/IMediaContainerService;->checkFreeStorage(ZLandroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 5167
    iget-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5165
    return v0

    .line 5167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 5308
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 5309
    .local v1, sourceDir:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v2, :cond_0

    .line 5310
    iget-object v2, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 5311
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 5312
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    .end local v0           #retCode:I
    :cond_0
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 9
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x4

    const-string v7, "PackageManager"

    .line 5183
    if-eqz p2, :cond_0

    .line 5185
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->createCopyFile()V

    .line 5188
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5189
    .local v0, codeFile:Ljava/io/File;
    iget-boolean v4, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->created:Z

    if-nez v4, :cond_1

    .line 5191
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 5193
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->setPermissions()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 5222
    :goto_0
    return v4

    .line 5197
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 5198
    .local v1, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 5199
    goto :goto_0

    .line 5202
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    .line 5204
    .local v2, out:Landroid/os/ParcelFileDescriptor;
    const/high16 v4, 0x3000

    :try_start_1
    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 5210
    const/4 v3, -0x4

    .line 5212
    .local v3, ret:I
    :try_start_2
    iget-object v4, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.defcontainer"

    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5214
    iget-object v4, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v4, v2}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 5215
    const/4 v3, 0x1

    .line 5218
    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5219
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    move v4, v3

    .line 5222
    goto :goto_0

    .line 5205
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 5206
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create file descritpor for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 5207
    goto :goto_0

    .line 5218
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #ret:I
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5219
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5218
    throw v4

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 2

    .prologue
    .line 5176
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 5177
    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    #calls: Lcom/android/server/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$2900(Lcom/android/server/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5178
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->created:Z

    .line 5180
    return-void

    .line 5176
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .parameter "delete"

    .prologue
    .line 5341
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 5342
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 5257
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5258
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 5260
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 5226
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5227
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 5229
    :cond_0
    return p1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, ".apk"

    .line 5233
    if-eq p1, v7, :cond_0

    .line 5234
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move v3, v6

    .line 5252
    :goto_0
    return v3

    .line 5238
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5239
    .local v1, codeFile:Ljava/io/File;
    const-string v3, ".apk"

    #calls: Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v8}, Lcom/android/server/PackageManagerService;->access$2800(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5240
    .local v0, apkName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5241
    .local v2, desFile:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    .line 5242
    goto :goto_0

    .line 5245
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5246
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5248
    invoke-direct {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->setPermissions()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    .line 5250
    goto :goto_0

    :cond_2
    move v3, v7

    .line 5252
    goto :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5172
    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5279
    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5264
    iget-object v0, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePathFromCodePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5268
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 5269
    .local v1, codePath:Ljava/lang/String;
    iget v2, p0, Lcom/android/server/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5270
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5271
    .local v0, apkNameOnly:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5273
    .end local v0           #apkNameOnly:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method
