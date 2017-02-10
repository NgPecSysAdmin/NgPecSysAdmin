410 Training Guide Ch 1
=======================

Lesson 1 Review
---------------

1.  Which of the following are disadvantages of the existing environment
    deployment scenario? (Choose all that apply.)

    a.  It gives you an opportunity to get it right from the start when
        it comes to implementing an infrastructure based on Windows
        Server 2012 R2.

    b.  ***Some new features and capabilities of Windows Server 2012 R2
        might have limited functionality or might not work at all when
        this deployment scenario is implemented.***

    c.  ***Server management might become more complex because of the
        need to use separate tools for managing servers running Windows
        Server 2012 R2 and those running earlier Windows Server
        operating system versions.***

    d.  It can help your organization improve server utilization and
        reduce costs.

2.  Which of the following is not an enhancement that Microsoft made in
    Windows Server 2012 and Windows Server 2012 R2 to alleviate some of
    the concerns administrators often have about performing forest
    upgrades? (Choose all that apply.)

    a.  Adprep functionality is now integrated into the AD DS
        installation process.

    b.  The new AD DS installation process includes prerequisite
        validation to identify potential errors before installation
        begins.

    c.  ***The Windows Server 2012 and Windows Server 2012 R2 forest
        functional levels add several new features to a forest.***

    d.  The Windows Server 2012 and Windows Server 2012 R2 domain
        functional levels add only one new feature to a domain.

3.  Which of the following migration paths is not supported by the
    Windows Server Migration Tools?

    a.  Migrating between x86-based and x64-based architectures

    b.  ***Migrating between source and destination servers that have
        different system UI languages***

    c.  Migrating between physical machines and virtual machines

    d.  Cross-subnet migrations

4.  Which Windows PowerShell cmdlet for the Windows Server Migration
    Tools can you use to get the set of all Windows features that can be
    migrated from the local server or from a migration store?

    a.  Export-SmigServerSetting

    b.  Send-SmigServerData

    c.  ***Get-SmigServerFeature***

    d.  Import-SmigServerSetting

Lesson 2 Review
---------------

1.  Which tool can help you ensure that new hardware you purchase will
    work properly with Windows Server 2012 R2?

    a.  The msinfo32.exe utility

    b.  The Get-WindowsFeature cmdlet

    c.  System Center 2012 R2 Configuration Manager

    d.  ***The Windows Server Catalog***

2.  During which of the six phases of performing an assessment using MAP
    would you ensure that MAP can successfully connect to and gather
    information from the target machines in your environment?

    a.  Phase 2: Gather requirements

    b.  ***Phase 3: Prepare environment***

    c.  Phase 4: Install MAP

    d.  Phase 5: Collect data

3.  When you generate reports after performing a Windows Server 2012 R2
    readiness assessment using MAP, where can you find information about
    the IP address and current operating system installed on each system
    inventoried?

    a.  On the Overview screen of the MAP user interface

    b.  On the Environment screen of the MAP user interface

    c.  On the Windows Environment Summary screen of the MAP user
        interface

    d.  ***In the Windows Environment Report .csv file, which you can
        open to view in Microsoft Excel***

410 Training Guide Ch 2
=======================

Lesson 1 Review
---------------

1.  Which installation option of Windows Server 2012 R2 potentially has
    the smallest disk footprint?

    a.  Server with a GUI

    b.  ***Server Core***

    c.  Minimal Server Interface

    d.  Full

2.  What action does the following Windows PowerShell command perform?\
    Uninstall-WindowsFeature Server-Gui-Shell -Restart

    a.  It converts a Server Core installation to a Server with a GUI
        installation.

    b.  It converts a Server with a GUI installation to a Server Core
        installation.

    c.  It converts a Server Core installation to a Minimal Server
        Interface installation.

    d.  ***It converts a Server with a GUI installation to a Minimal
        Server Interface installation***.

3.  You deployed a Server Core installation of Windows Server 2012 R2 in
    a virtualized environment running on a Hyper-V host. Because of
    limitations in available storage space for the host, you want to
    further reduce the disk footprint of your Server Core installation.
    Which of the following actions could you perform to try to do this?
    (Choose all that apply.)

    a.  ***Uninstall any roles or features that are not needed on the
        server.***

    b.  ***Use the –Remove parameter with the Uninstall-WindowsFeature
        cmdlet to remove the binaries for unneeded roles and features
        from the local side-by-side store on the server.***

    c.  Use the –Source parameter with the Install-WindowsFeature cmdlet
        to specify a mounted Windows Image (.wim) file where binaries
        you removed from the local side-by-side store on the server can
        be found.

    d.  Use Server Manager to remove the binaries for unneeded roles and
        features from the local side-by-side store on the server.

Lesson 2 Review
---------------

1.  Which of the following is not recommended when setting up your build
    lab? (Choose all that apply.)

    a.  Using a Hyper-V host for performing image engineering within a
        virtual environment

    b.  ***Using virtual machines for testing your reference image when
        the servers in the production environment in which you will be
        deploying your reference image are physical systems***

    c.  Using a DHCP server to dynamically assign an IP address to your
        reference computer

    d.  ***Installing the necessary tools for building reference images
        on your reference computer***

2.  Which component of a build lab helps eliminate the need to burn boot
    images onto DVD media to kick-start the reference-image testing
    process?

    a.  DHCP server

    b.  Technician computer

    c.  Reference computer

    d.  ***Windows Deployment Services***

3.  A Windows installation that has been sysprepped and captured is
    referred to as what?

    a.  A reference computer

    b.  A reference installation

    c.  ***A reference image***

    d.  A test system

Lesson 3 Review
---------------

1.  Which of the following is not a software prerequisite for installing
    MDT 2013 on a technician computer running Windows 7 to deploy
    Windows Server 2012 R2?

    a.  Microsoft Management Console version 3.0

    b.  Microsoft .NET Framework 3.5 with Service Pack 1 (SP1) or later

    c.  Windows PowerShell version 2.0 or later

    d.  ***The latest version of the Windows Automated Installation Kit
        (Windows AIK)***

2.  When building reference images, what step should you always perform
    after importing your operating-system source files, out-of-box
    drivers, applications, and packages into your deployment share;
    creating and customizing any necessary task sequences; and modifying
    the configuration files for your deployment share?

    a.  Deploy and capture the reference image.

    b.  ***Update the deployment share.***

    c.  Create selection profiles.

    d.  Create linked deployment shares.

3.  What is the name of the task-sequence group that controls the phase
    of the deployment process during which the BIOS of the target
    computer is checked to ensure that it is compatible with the
    operating system you are deploying?

    a.  ***Validate***

    b.  Preinstall

    c.  Install

    d.  Postinstall

Lesson 4 Review
---------------

1.  Which of the following is not true concerning the LTI approach?
    (Choose all that apply.)

    a.  ***LTI is a high-volume deployment strategy for midsized to
        large organizations that combines MDT with System Center
        Configuration Manager.***

    b.  You use LTI to deploy the reference images created in your build
        lab onto systems in your production environment.

    c.  ***You can use LTI to deploy Windows Server 2012 R2 onto
        physical systems only, not virtual machines.***

    d.  You can start LTI by pressing F12 on each target system and
        selecting the option to PXE-boot the system.

2.  Which of the following are benefits of using the ZTI approach over
    LTI? (Choose all that apply.)

    a.  ***Support for bandwidth management of image transfer***

    b.  ***Support for reporting on driver availability for devices
        across your organization***

    c.  ***Tolerance of poor or intermittent network connectivity***

    d.  ***Support for fully unattended deployment***

410 Chapter 03 Server Remote Management
=======================================

Lesson 1 Review
---------------

1.  You want to use Server Manager to manage all the Windows servers in
    your environment that are being used as print servers, but there is
    no Print Services page available in Server Manager. Why? (Choose all
    that apply.)

    a.  All your print servers are currently offline, having been taken
        down for maintenance.

    b.  ***None of your servers have the Print and Document Services
        role installed on them.***

    c.  ***None of the servers in your server pool have the Print and
        Document Services role installed on them.***

    d.  ***All print servers are running an earlier version of Windows
        Server and have not been configured for remote management.***

2.  How can you verify that remote management has been enabled on a
    server running Windows Server 2012? (Choose all that apply.)

    a.  By examining the Dashboard of Server Manager running on that
        server.

    b.  ***By examining the Local Server page of Server Manager running
        on that server.***

    c.  By examining the All Servers page of Server Manager running on
        that server.

    d.  ***By examining the output of the Configure-SMRemoting –get
        command.***

3.  Your organization has a mixed environment of servers running Windows
    Server 2012 R2 and Windows Server 2008 RYou want to manage your
    servers from a secure workstation running Windows 8.1, so you
    install the Remote Server Administration Tools for Windows 8.1 on
    this workstation. Which of the following statements best describes
    the management capabilities of this arrangement?

    a.  You can manage all roles and features on servers running Windows
        Server 2012 R2 and servers running Windows Server 2008 R2.

    b.  ***You can manage all roles and features on servers running
        Windows Server 2012 R2 and some roles and features on servers
        running Windows Server 2008 R2.***

    c.  You can manage all roles and features on servers running Windows
        Server 2012 R2 but no roles and features on servers running
        Windows Server 2008 R2.

    d.  You can manage all roles and features on servers running Windows
        Server 2012 R2, but you need to install the Remote Server
        Administration Tools for Windows 8.1 on a workstation running
        Windows 7 to manage roles and features on servers running
        Windows Server 2008 R2.

Lesson 2 Review
---------------

1.  Your organization has six servers running Windows Server 2012 in a
    domain environment. Only four of those servers are listed on the All
    Servers page of Server Manager. What should you do to ensure the
    remaining two servers are also listed on this page?

    a.  Create a server group and add the two servers to the group.

    b.  Create a server pool and add the two servers to the pool.

    c.  Add the servers to an existing server group.

    d.  ***Add the servers to your server pool.***

2.  Which of the following are not purposes for creating server groups
    in Server Manager? (Choose all that apply.)

    a.  ***You can assign privileges to servers by adding them to server
        groups.***

    b.  You can use server groups to facilitate managing servers at
        different geographical locations.

    c.  ***You can use server groups to facilitate the delegation of
        permissions for servers used by different departments in your
        organization.***

    d.  ***You can nest server groups to create a hierarchical
        collection of servers that mirrors the administrative
        responsibilities of your IT staff.***

3.  You configured the Performance tile on the All Servers page to set a
    performance alert threshold for CPU usage of 60 percent because when
    you opened the Performance tab of Task Manager on those servers, you
    noticed that several of your managed servers were experiencing heavy
    load. However, three hours later you notice that no alerts have been
    raised on the Performance tile of the All Servers page, even though
    the servers still appear to be under heavy load. Why? (Choose all
    that apply.)

    a.  ***You neglected to enable performance counters on those
        servers.***

    b.  The minimum graph display period for performance alerts is one
        day, and that much time has not elapsed yet.

    c.  ***You configured Server Manager properties to a refresh period
        of more than three hours.***

    d.  You have not yet added the servers to a custom server group.

4.  Which of the following service management tasks can you not perform
    on remote servers by using a Services tile on one of the Server
    Manager pages?

    a.  Stopping a service

    b.  Pausing a service

    c.  Starting a service

    d.  ***Changing the Startup Type option of the service***

Lesson 3 Review
---------------

1.  Which of the following Windows PowerShell commands will not
    uninstall the Windows Server Backup feature?

    a.  Uninstall-WindowsFeature –Name Windows-Server-Backup

    b.  Remove-WindowsFeature –Name Windows-Server-Backup

    c.  Get-WindowsFeature –Name \*Backup\* | Uninstall-WindowsFeature

    d.  ***Invoke-Command –ScriptBlock {Delete-WindowsFeature –Name
        Windows-Server-Backup}***

2.  What action will the following command perform?\
    \
    Get-WindowsFeature -Computer SERVER9 |\
    Where-Object InstallState -eq Installed |\
    Uninstall-WindowsFeature

    a.  The command will install all available roles and features on the
        remote server.

    b.  The command will uninstall all available roles and features on
        the remote server.

    c.  ***The command will uninstall all installed roles and features
        on the remote server.***

    d.  The command has incorrect syntax and will generate an error.

3.  What action will the following command perform?\
    \
    Add-WindowsFeature -Name Web-Server -IncludeAllSubFeature
    –ComputerName SERVER5,SERVER6

    a.  Because Add-WindowsFeature is an alias for the
        Install-WindowsFeature cmdlet, this command will install the Web
        Server (IIS) role on the two remote servers indicated.

    b.  ***Because Add-WindowsFeature is an alias for the
        Install-WindowsFeature cmdlet, this command will install the Web
        Server (IIS) role and all of its subordinate role services and
        features on the two remote servers indicated.***

    c.  Because Add-WindowsFeature is an alias for the
        Install-WindowsFeature cmdlet, this command will install the Web
        Server (IIS) role, all of its subordinate role services and
        features, and all applicable management tools for the role and
        its subordinate role services and features on the two remote
        servers indicated.

    d.  The command has incorrect syntax and will generate an error.

4.  If the binaries for a feature have been removed from a server, which
    of the following conditions are likely to prevent the feature from
    being successfully installed on the server? (Choose all that apply.)

    a.  ***Internet connectivity is down, which prevents the needed
        binaries from being downloaded from Windows Update if no local
        source for these binaries is present on the network and
        configured to be used by Server Manager or the
        Install-WindowsFeature cmdlet. ***

    b.  ***Group Policy has been configured to prevent the needed
        binaries from being downloaded from Windows Update, and there is
        no local source for these binaries present on the network and
        configured to be used by Server Manager or the
        Install-WindowsFeature cmdlet.***

    c.  ***Group Policy has been configured to prevent the needed
        binaries from being downloaded from Windows Update, and a local
        source for these binaries is present on the network but has been
        configured incorrectly to be used by Server Manager or the
        Install-WindowsFeature cmdlet.***

    d.  The server is connected to the Internet, but the Windows Update
        site is temporarily down, which prevents the needed binaries
        from being downloaded if no local source for these binaries is
        present on the network and configured to be used by Server
        Manager or the Install-WindowsFeature cmdlet.

Lesson 4 Review
---------------

1.  Which of the following statements is not true about background jobs?

    a.  ***You can view them by using the Get-ScheduledJob cmdlet.***

    b.  You can create them by using the Start-Job cmdlet.

    c.  You can temporarily stop them by using the Suspend-Job cmdlet.

    d.  You can delete them by using the Remove-Job cmdlet.

2.  What action will typing the command New-JobTrigger –Daily –At “4:15
    AM” –DaysInterval 3 perform when it is run?

    a.  It creates a new scheduled job that runs daily at 4:15 A.M. on
        the third day of each week.

    b.  It creates a new scheduled job that runs daily at 4:15 A.M.
        every third day.

    c.  It creates a new job trigger that can be used to run a scheduled
        job daily at 4:15 A.M. on the third day of each week.

    d.  ***It creates a new job trigger that can be used to run a
        scheduled job daily at 4:15 A.M. every third day.***

3.  What two cmdlets would you use to create a scheduled job?

    a.  New-Job and New-JobTrigger

    b.  New-Job and New-ScheduledJob

    c.  New-JobTrigger and New-ScheduledJob

    d.  ***New-JobTrigger and Register-ScheduledJob***

4.  Which of the following is not true concerning PSSessions in Windows
    PowerShell 3.0?

    a.  Any new sessions you create using the New-PSSession cmdlet are
        saved on the remote computer.

    b.  Once you start the remote PSSession, you can disconnect from it
        using the Disconnect-PSSession cmdlet without disrupting any
        commands running in the session.

    c.  You can later reconnect to a disconnected remote PSSession from
        the same or a different computer using the Connect-PSSession
        cmdlet.

    d.  ***You should use PSSessions only when you need to run a single
        command on a remote server, not multiple commands that share
        data such as a function or the value of a variable.***

410 Chapter 04 Deploying Domain Controllers
===========================================

Lesson 1 Review
---------------

1.  Which of the following is not a best practice for performing new
    forest deployments?

    a.  ***Ensure that each domain has at least two domain controllers
        to provide fault tolerance and ensure availability. Only one of
        these domain controllers needs to be writeable; the other can be
        an RODC.***

    b.  Make sure that each site in your domain has a sufficient number
        of domain controllers to service the needs of users for logging
        on and accessing network resources.

    c.  Whenever possible, keep the design of your forest simple by
        having only one domain.

    d.  Install only the AD DS and DNS Server roles on your domain
        controllers; do not install any other server roles.

2.  Which of the following information should you obtain or decide upon
    during the planning stage of deploying the first Windows Server 2012
    or Windows Server 2012 R2 domain controller in a new forest? (Choose
    all that apply.)

    a.  ***The fully qualified domain name (FQDN) for the root domain of
        your new forest***

    b.  ***The forest and domain functional levels***

    c.  ***The location for the AD DS database, log files, and SYSVOL
        folder***

    d.  The credentials of a member of the Domain Admins security group

3.  Which of the following is not true? (Choose all that apply.)

    a.  ***Creating a DNS delegation is a required step for all AD DS
        deployments.***

    b.  All domain controllers in a domain should have the DNS Server
        role installed and configured to ensure high availability in
        distributed environments.

    c.  All domain controllers in a domain should be configured as
        global catalog servers to ensure high availability in
        distributed environments.

    d.  ***Read-only domain controllers require that there be at least
        one writeable domain controller running Windows Server 2003 or
        later installed in the domain***.

Lesson 2 Review
---------------

1.  Which of the following procedures for deploying the first Windows
    Server 2012 R2 domain controller in a new forest is correct? (Choose
    all that apply.)

    a.  Install Windows Server 2012 R2 on your server and log on using
        the local Administrator account. Open Server Manager and run the
        AD DS Configuration Wizard to promote the server as a domain
        controller.

    b.  Install Windows Server 2012 R2 on your server and log on using
        the local Administrator account. Open Server Manager and run the
        Add Roles And Features Wizard to promote the server as a domain
        controller.

    c.  ***Install Windows Server 2012 R2 on your server and log on
        using the local Administrator account. Open Server Manager and
        run the Add Roles And Features Wizard to install the AD DS role
        on the server. Then run the AD DS Configuration Wizard to
        promote the server as a domain controller.***

    d.  Install Windows Server 2012 R2 on your server and log on using
        the local Administrator account. Open Server Manager and run the
        AD DS Configuration Wizard to install the AD DS role on the
        server. Then run the Add Roles And Features Wizard to promote
        the server as a domain controller.

2.  Which of the following statements is not correct concerning the
    deployment of the first Windows Server 2012 R2 domain controller in
    an existing forest running an earlier version of Windows Server?
    (Choose all that apply.)

    a.  ***You must prepare the forest and domain and extend the schema
        by manually running Adprep before you use Server Manager to
        deploy the first Windows Server 2012 R2 domain controller in an
        existing forest running an earlier version of Windows Server.***

    b.  You must select the Add A Domain Controller To An Existing
        Domain option on the Deployment Configuration page of the AD DS
        Configuration Wizard to deploy the first Windows Server 2012 R2
        domain controller in an existing forest running an earlier
        version of Windows Server.

    c.  ***You can use the Install From Media (IFM) deployment method to
        deploy the first Windows Server 2012 R2 domain controller in an
        existing forest running an earlier version of Windows Server.***

    d.  If your current logon credentials have insufficient privileges
        to deploy the first Windows Server 2012 R2 domain controller in
        an existing forest running an earlier version of Windows Server,
        you can specify different credentials on the Deployment
        Configuration page of the AD DS Configuration Wizard.

3.  Which of the following is the best syntax when using the Dsquery.exe
    command-line tool to verify that Adprep has successfully extended
    your forest’s schema?

    a.  Dsquery \* cn=schema,cn=configuration,dc=fabrikam,dc=com –attr
        objectVersion

    b.  Dsquery \* cn=schema,cn=configuration,dc=fabrikam,dc=com –scope
        base –attr sAMAccountName

    c.  Dsquery \* cn=schema,cn=configuration,dc=fabrikam,dc=com –scope
        base –attr \*

    d.  ***Dsquery \* cn=schema,cn=configuration,dc=fabrikam,dc=com
        –scope base –attr objectVersion***

Lesson 3 Review
---------------

1.  Which of the following Windows PowerShell commands adds the remote
    server SRV-A to the TrustedHosts list on the local server?

    a.  Get-Item wsman:\\localhost\\Client\\TrustedHosts –Value SRV-A

    b.  ***Set-Item wsman:\\localhost\\Client\\TrustedHosts –Value
        SRV-A***

    c.  Get-Item wsman:\\localhost\\Server\\TrustedHosts –Value SRV-A

    d.  Set-Item wsman:\\localhost\\Server\\TrustedHosts –Value SRV-A

2.  Which of the following is not a cmdlet from the ADDSDeployment
    module?

    a.  Install-ADDSDomain

    b.  Install-ADDSDomainController

    c.  Uninstall-ADDSDomainController

    d.  ***Get-ADForest***

3.  Which Windows PowerShell command should you use to run a
    prerequisites check before attempting to deploy an additional domain
    controller in an existing forest?

    a.  Install-ADDSDomainController –Prerequisites

    b.  Invoke-BpaModel –ModelId Microsoft/Windows/DirectoryServices

    c.  ***Test-ADDSDomainControllerInstallation***

    d.  Install-ADDSDomainController –Whatif

410 Chapter 5 Active Directory administration
=============================================

Lesson 1 Review
---------------

1.  What feature of ADAC enables you to quickly access the last three
    containers you accessed? (Choose all that apply.)

    a.  Column Explorer

    b.  Navigation pane

    c.  Navigation nodes

    d.  ***MRU list***

2.  Which of the following types of directory objects can you not create
    using ADAC? (Choose all that apply.)

    a.  ***Sites***

    b.  ***Domains***

    c.  ***Trusts***

    d.  Groups

3.  Which of the following Active Directory administration tasks can you
    not perform using ADAC? (Choose all that apply.)

    a.  Raising the forest functional level

    b.  ***Delegating administrative control over an OU and the objects
        it contains***

    c.  Enabling the Active Directory Recycle Bin

    d.  Configuring fine-grained password policies

Lesson 2 Review
---------------

1.  If the recycled object lifetime for a directory object has expired,
    what state is the object in?

    a.  Live

    b.  Deleted

    c.  Recycled

    d.  ***Removed***

2.  Which Windows PowerShell cmdlet can you use to enable the Active
    Directory Recycle Bin?

    a.  Set-ADForestMode

    b.  Enable-ADRecycleBin

    c.  ***Enable-ADOptionalFeature***

    d.  New-ADFineGrainedPasswordPolicy

3.  Which of the following are best practices for implementing
    fine-grained password policies in a domain? (Choose all that apply.)

    a.  Assign fine-grained password policies to users instead of
        groups.

    b.  ***Ensure that each fine-grained password policy has its own
        unique preference value.***

    c.  Ensure that each group has at least one fine-grained password
        policy assigned to it.

    d.  ***Make sure you have configured a fallback policy for the
        domain. This can be either a fine-grained password policy that
        has a higher precedence value than any other policy or the
        password and account lockout settings defined in the Default
        Domain Policy GPO.***

Lesson 3 Review
---------------

1.  Which Windows PowerShell cmdlet can you combine with New-ADUser to
    bulk-create new user accounts?

    a.  Get-ADUser

    b.  ***Import-Csv***

    c.  Set-ADAccountPassword

    d.  Where-Object

2.  What does the –Force parameter do in the following Windows
    PowerShell command?\
    Set-ADAccountPassword -Reset -NewPassword (\
    ConvertTo-SecureString –AsPlainText "Pa\$\$w0rd" –Force\
    )

    a.  It forces the specified password to be converted from plain text
        to a secure string.

    b.  It forces the specified password to be encrypted.

    c.  ***It suppresses the confirmation prompt that the user normally
        would have to respond to when performing this action.***

    d.  It forces the user to respond to a confirmation prompt when
        performing this action.

3.  What commands can you use to find Windows PowerShell cmdlets for
    managing Active Directory groups? (Choose all that apply.)

    a.  Get-Command –Module ActiveDirectory

    b.  Get-Command \*ADGroup\*

    c.  ***Get-Help \*ADGroup\****

    d.  Get-Help ActiveDirectory

410 Chapter 6 Network administration
====================================

Lesson 1 Review
---------------

1.  Which approach to ensuring DHCP availability involves dividing up
    the IP address pool of a scope between two DHCP servers, typically
    using the ratio 80:20?

    a.  Server cluster

    b.  ***Split scope***

    c.  Standby server

    d.  DHCP failover

2.  Which of the following is true concerning DHCP failover in Windows
    Server 2012 and Windows Server 2012 R2? (Choose all that apply.)

    a.  ***DHCP failover only supports using a maximum of two DHCP
        servers.***

    b.  DHCP failover is supported for both IPv4 and IPv6 scopes and
        subnets.

    c.  ***DHCP failover can be implemented in two ways: load-balance
        mode or hot-standby mode.***

    d.  DHCP failover requires that the DHCP servers be domain members
        and authorized in Active Directory.

3.  Which of the following scenarios might be appropriate for
    implementing DHCP failover in hot-standby mode? (Choose all that
    apply.)

    a.  ***Your organization has a hub-and-spoke site topology.***

    b.  ***You want to use the DHCP server in your data center as a
        standby in case a DHCP server at one of your remote branch
        offices goes offline.***

    c.  ***Your organization has a hub-and-spoke site topology, but you
        have a limited budget for deploying additional servers as
        standbys for existing servers in your environment.***

    d.  Your organization has only one physical site.

Lesson 2 Review
---------------

1.  Which of the following is not a correct explanation of a DNSSEC term
    or concept?

    a.  DNSKEY resource records contain the public keys for a particular
        zone.

    b.  Only zones that are authoritative can be signed.

    c.  The key signing key (KSK) is used to sign all of the DNSKEY
        records at the root of the zone.

    d.  ***When zone data is updated by a client sending a DNS dynamic
        update to an authoritative DNS server, the entire zone must be
        re-signed.***

2.  In a Windows Server–based DNS infrastructure in which DNSSEC has
    been implemented, where is the validation of the response to a query
    performed?

    a.  On an authoritative DNS server in the forest root domain

    b.  On an authoritative DNS server in a child or tree domain

    c.  ***On a recursive DNS server that is not authoritative for the
        zone being queried***

    d.  On the client computer issuing the name query

3.  When you want to implement DNSSEC in an Active Directory environment
    in which all DNS servers are domain controllers and use only Active
    Directory–integrated zones, which of the following steps in the
    DNSSEC deployment process is not correct?

    a.  Begin by introducing Windows Server 2012 or Windows Server 2012
        R2 domain controllers into your environment.

    b.  After deciding which DNS zone to implement DNSSEC on, sign the
        zone.

    c.  ***Use Robocopy.exe to replicate the private zone signing keys
        to all domain controllers hosting the zone.***

    d.  Use IPsec to protect the last mile between the nonvalidating DNS
        client and its local DNS server.

Lesson 3 Review
---------------

1.  When you use Show-Command to open a properties page for a cmdlet,
    what does an asterisk (\*) mean when you find one beside a
    parameter?

    a.  The parameter is optional.

    b.  ***The parameter is mandatory.***

    c.  The parameter does not apply to that cmdlet.

    d.  The parameter can be specified only from the command line.

2.  Which cmdlet can you use to disable a binding on a network adapter?

    a.  Get-NetAdapterBinding

    b.  Remove-NetAdapterBinding

    c.  ***Disable-NetAdapterBinding***

    d.  Disable-NetAdapter

3.  What action does the following command perform?\
    Set-DhcpServerv4OptionValue -Router 10.10.0.1 -ScopeId 10.10.20.0

    a.  Configures a DHCP server option that assigns the address
        10.10.0.1 as the default gateway on any DHCP client whose IPv4
        address is on the 10.10.20.0 subnet

    b.  ***Configures a DHCP scope option that assigns the address
        10.10.0.1 as the default gateway on any DHCP client whose IPv4
        address is on the 10.10.20.0 subnet***

    c.  Configures a DHCP server option that assigns the address
        10.10.0.1 to a router on the 10.10.20.0 subnet

    d.  Configures a DHCP scope option that assigns the address
        10.10.0.1 to a router on the 10.10.20.0 subnet

Lesson 4 Review
---------------

1.  Which of the following is not true about IPv6 on Windows Server 2012
    and Windows Server 2012 R2?

    a.  Windows Server 2012 and Windows Server 2012 R2 have a dual IP
        layer TCP/IP stack that supports both IPv4 and IPv6.

    b.  ***You can disable IPv6 on all interfaces by editing the
        registry on a Windows Server 2012 or Windows Server 2012 R2
        computer.***

    c.  You can use Windows Server 2012 and Windows Server 2012 R2 as a
        DHCPv6 server for stateless address autoconfiguration.

    d.  You can use Windows Server 2012 and Windows Server 2012 R2 as an
        ISATAP router.

2.  The IPv6 address assigned to an interface has a prefix identifier of
    FE80::/6What type of address is it?

    a.  Global address

    b.  Unique local address

    c.  ***Link-local address***

    d.  Multicast address

3.  Which Windows PowerShell cmdlet can you use to display the address
    information for an interface?

    a.  Ipconfig

    b.  Get-NetAdapter

    c.  ***Get-NetIPAddress***

    d.  Get-NetIPInterface

4.  What do you need to do or use for Windows computers on an IPv4-only
    network to be able to communicate with Windows computers on a
    different network that is IPv6-capable?

    a.  You need to do nothing because Windows computers automatically
        assign IPv6 addresses to their LAN interfaces using stateless
        address autoconfiguration.

    b.  ***You need to deploy Windows Server 2012 or Windows Server 2012
        R2 as an ISATAP router and use it to forward traffic between the
        IPv4-only and IPv6-capable networks.***

    c.  You need to deploy Windows Server 2012 or Windows Server 2012 R2
        as a Teredo server and use it to forward traffic between the
        IPv4-only and IPv6-capable networks.

    d.  You need to deploy Windows Server 2012 or Windows Server 2012 R2
        as a DHCPv6 server and use it to assign global IPv6 addresses to
        the computers on the IPv4-only network.

410 Chapter 7 Hyper-V virtualization
====================================

Lesson 1 Review
---------------

1.  Which edition and installation option of Windows Server 2012 R2 are
    the best choices for deploying Hyper-V hosts in a data center
    environment?

    a.  Standard edition on Server Core

    b.  Standard edition on Server With A GUI

    c.  ***Datacenter edition on Server Core***

    d.  Datacenter edition on Server With A GUI

2.  You want to use a Server Core installation of Windows Server 2012 R2
    as a Hyper-V host. The server has been joined to an Active Directory
    domain and resides in your data center. Because you do not yet feel
    confident managing servers from the command line, you want to manage
    the host using the Hyper-V Manager snap-in. Given that security is a
    concern and you also want to keep the servicing overhead low for
    your servers while managing them conveniently, which of the
    following would be the best approach for you to pursue?

    a.  Log on to the local console of the server, type powershell at
        the command prompt, and type Install-WindowsFeature
        –Server-Gui-Mgmt-Infra –Restart to convert your Server Core
        installation to a Minimal Server Interface installation. Now log
        on again to the local console of the server and launch the
        Hyper-V Manager snap-in to manage the Hyper-V host and its
        virtual machines.

    b.  Enable Remote Desktop on the server and configure it to allow
        only remote clients that use Network Level Authentication to
        connect to the server. Now log on to an administrator
        workstation running Windows 8.1, use Remote Desktop Connection
        to connect to the remote host, and manage the host from your
        workstation.

    c.  Log on to the local console of the server, type powershell at
        the command prompt, and type Install-WindowsFeature
        –Server-Gui-Mgmt-Infra –Restart to convert your Server Core
        installation to a Minimal Server Interface installation. Enable
        Remote Desktop on the server and configure it to allow only
        remote clients that use Network Level Authentication to connect
        to the server. Now log on to an administrator workstation
        running Windows 8, use Remote Desktop Connection to connect to
        the remote host, and manage the host from your workstation.

    d.  ***Install the RSAT for Windows 8 on an administrator
        workstation running Windows 8, launch the Hyper-V Manager
        snap-in, connect to the remote host, and manage the host from
        your workstation.***

3.  Which Windows PowerShell cmdlet can you use to configure the default
    storage location for virtual machine files on a Hyper-V host?

    a.  Get-VMHost

    b.  ***Set-VMHost***

    c.  Add-VMStoragePath

    d.  Set-VM

Lesson 2 Review
---------------

1.  Which of the following is not true concerning virtual network
    adapters?

    a.  Each virtual machine can have up to 12 virtual network adapters
        installed in it.

    b.  Each virtual network adapter can be configured with either a
        static MAC address or a dynamic MAC address.

    c.  Each virtual network can be assigned a unique VLAN channel.

    d.  ***Virtual switches on a Hyper-V host can be connected to a
        wireless network adapter on the host system.***

2.  Why are pass-through disks no longer recommended for Hyper-V virtual
    machines? (Choose all that apply.)

    a.  Pass-through disks are no longer being manufactured and
        therefore are difficult to obtain.

    b.  ***Tests have demonstrated that fixed-size virtual hard disks
        perform almost as well as pass-through disks and also provide
        the flexibility benefits of virtual hard disks.***

    c.  ***Tests have demonstrated that dynamically expanding virtual
        hard disks perform almost as well as pass-through disks and also
        provide the flexibility benefits of virtual hard disks.***

    d.  Configuring a virtual machine to use a pass-through disk is a
        complex task that might introduce errors.

3.  Although performing checkpoints is not recommended in production
    environments, they are sometimes used. Which of the following
    checkpoint actions should you never take? (Choose all that apply.)

    a.  ***Performing checkpoints on virtualized domain controllers***

    b.  Performing checkpoints on a virtual machine just before applying
        a critical software update to the guest operating system

    c.  ***Performing checkpoints on virtualized workloads that use data
        distributed across multiple databases***

    d.  ***Restoring checkpoints older than 30 days on domain-joined
        virtual machines***

4.  You want to enable DHCP Guard on a virtual network adapter on
    virtual machine SRV-B running on host HOSTTo do this, you run the
    following command:\
    \
    Set-VMNetworkAdapter -ComputerName HOST4 -VMName SRV-B
    -DhcpGuard:\$true\
    *\
    *Unfortunately, running this command returns the following error:\
    \
    Set-VMNetworkAdapter : Cannot bind parameter 'DhcpGuard'. Cannot
    convert value\
    "True" to type "Microsoft.HyperV.PowerShell.OnOffState". Error:
    "Invalid cast from\
    'System.Boolean' to 'Microsoft.HyperV.PowerShell.OnOffState'."\
    At line:1 char:67\
    + Set-VMNetworkAdapter -ComputerName HOST4 -VMName SRV-B
    -DhcpGuard:\$true\
    + \~\~\~\~\~\
    + CategoryInfo : InvalidArgument: (:) \[Set-VMNetworkAdapter\],\
    ParameterBindingException\
    + FullyQualifiedErrorId :
    CannotConvertArgumentNoMessage,Microsoft.HyperV.PowerShell.Commands.\
    SetVMNetworkAdapterCommand\
    \
    What is the reason for this error?

    a.  The virtual network adapter does not support DHCP Guard.

    b.  You forgot to include the –VMName parameter in your command to
        specify which virtual network adapter you want to configure on
        the virtual machine.

    c.  You should have specified –DhcpGuard ok instead of
        –DhcpGuard:\$true in your command.

    d.  ***You should have specified –DhcpGuard 1 instead of
        –DhcpGuard:\$true in your command.***

Lesson 3 Review
---------------

1.  You have three virtual machines running on a Hyper-V host that has
    16 GBs of physical memory. The guest operating system installed in
    all three virtual machines is Windows Server 2008 R2, and none of
    the virtual machines is a file server. Dynamic Memory is enabled on
    all three machines and is configured as follows:\
    \
    Image VM-1 has 1 GB minimum RAM, 4 GBs maximum RAM, and 20 percent
    memory buffer.\
    Image VM-2 has 2 GBs minimum RAM, 8 GBs maximum RAM, and 30 percent
    memory buffer.\
    Image VM-3 has 1 GB minimum RAM, 6 GBs maximum RAM, and 100 percent
    memory buffer.\
    \
    Over time, you find that the performance of VM-1 and VM-2 is
    becoming sluggish. Why?

    a.  The minimum RAM assigned to VM-1 is probably too low.

    b.  The maximum RAM assigned to VM-2 is probably too high.

    c.  The memory buffer for both VM-1 and VM-2 is probably too low.

    d.  ***The memory buffer for VM-3 is probably too high.***

2.  In which of these scenarios might you try to optimize a virtual hard
    disk by compacting, expanding, shrinking, or merging it?

    a.  When the disk is associated with a virtual machine that has
        checkpoints

    b.  ***When you need to free up storage space on the host***

    c.  When the disk is associated with a virtual machine that has
        replication enabled

    d.  When the disk is associated with a chain of differencing disks

3.  Which of the following is not true concerning checkpoints? (Choose
    all that apply.)

    a.  Performing checkpoints creates point-in-time images of the
        virtual machine to which you can return later if needed. There
        is no interruption to running virtual machines when checkpoints
        are performed on them.

    b.  When you apply a checkpoint, any unsaved data in the virtual
        machine will be lost.

    c.  ***You can perform checkpoints only when the virtual machine is
        stopped.***

    d.  ***Exporting checkpoints is not supported in Hyper-V.***

410 Chapter 8 File services and storage
=======================================

Lesson 1 Review
---------------

1.  Which of the following might be true if the primordial pool is not
    visible in the Storage Pools tile on the Storage Pools subpage of
    the File And Storage Services page of Server Manager? (Choose all
    that apply.)

    a.  A new storage pool has been created on the server.

    b.  ***The server has only one connected physical disk (the boot
        disk).***

    c.  ***The physical disks are already allocated to storage pools on
        the server.***

    d.  ***The physical disks already have volumes on them.***

2.  Which of the following storage-management utilities is deprecated as
    of Windows Server 2012 R2? (Choose all that apply.)

    a.  ***DiskPart***

    b.  ***DiskRAID***

    c.  ***The Disk Management MMC snap-in***

    d.  WMI

3.  You have used Windows PowerShell to create two 5 TB data volumes on
    your file server. The total free space on all connected physical
    disks is only 2 TBs. What feature of Storage Spaces makes this
    possible?

    a.  ***Thin provisioning***

    b.  Fixed provisioning

    c.  Mirror resiliency

    d.  Parity resiliency

4.  Which of the following is not true when deploying Storage Spaces
    with Failover Clustering? (Choose all that apply.)

    a.  ***A minimum of two physical disks is required.***

    b.  ***Physical disks must be SATA disks.***

    c.  Physical disks must pass the failover cluster validation tests.

    d.  ***Thin provisioning must be used.***

Lesson 2 Review
---------------

1.  What is the minimum number of physical disks required for a storage
    pool that will be used to provision resilient volumes for a failover
    cluster consisting of two file servers?

    a.  One

    b.  Two

    c.  ***Three***

    d.  Four

2.  Which Windows PowerShell cmdlet can you use to view the health
    status for Storage Spaces on your file server?

    a.  Get-StoragePool

    b.  Get-VirtualDisk

    c.  Get-PhysicalDisk

    d.  ***Get-StorageSubSystem***

3.  Which of the following tasks cannot be performed on a virtual disk
    by using either Server Manager or Windows PowerShell?

    a.  ***Extending the virtual disk***

    b.  Shrinking the virtual disk

    c.  ***Detaching the virtual disk***

    d.  ***Deleting the virtual disk***

4.  Which of the following profiles should you select when using the New
    Shares Wizard to create a share for storing Hyper-V virtual machine
    files on the network? (Choose all that apply.)

    a.  SMB Share - Quick

    b.  SMB Share - Advanced

    c.  ***SMB Share - Application***

    d.  NFS Share

Lesson 3 Review
---------------

1.  In an environment in which the iSCSI Target Server role service of
    Windows Server 2012 R2 has been deployed, what might the following
    string mean?\
    \
    *iqn.1991-05.com.microsoft:srv4-finance-target\
    *

    a.  This is the IQN of the iSCSI initiator on a computer named srv4.

    b.  This is the IQN of the iSCSI initiator on a computer named
        finance.

    c.  ***This is the IQN of an iSCSI target on a target portal named
        srv4.***

    d.  This is the IQN of an iSCSI target on a target portal named
        finance.

2.  What steps can you take to make your iSCSI storage environment more
    secure? (Choose all that apply.)

    a.  ***Enable and configure CHAP and Reverse CHAP on your iSCSI
        targets.***

    b.  ***Deploy a RADIUS server and configure your iSCSI initiators to
        use it for authentication.***

    c.  ***Configure IPsec tunnel mode addresses for the initiator.***

    d.  Configure your iSCSI targets to allow connections from
        initiators with an IQN of IQN:\*.

3.  Which of the following Windows PowerShell cmdlets produces output
    that you can use to determine the LUN mapping for an iSCSI target?

    a.  Get-IscsiConnection

    b.  ***Get-IscsiServerTarget***

    c.  Register-IscsiSession

    d.  Get-IscsiTarget

410 Chapter 9 Print and document services
=========================================

Lesson 1 Review
---------------

1.  Which of the following tasks must you perform to be able to manage
    print servers running Windows Server 2012 R2 from a single
    workstation running Windows 8.1? (Choose all that apply.)

    a.  ***Install RSAT for Windows 8.1 on the workstation and enable
        the necessary remote-management tools.***

    b.  ***Make sure Remote Management is enabled on the print
        servers.***

    c.  Add the print servers to the server pool in Server Manager.

    d.  ***Add the print servers to the console tree in Print
        Management.***

2.  Which of the following nodes in the console tree of Print Management
    allows you to install new printer drivers on a print server? (Choose
    all that apply.)

    a.  The Print Management node

    b.  The Print Servers node

    c.  ***A node representing a print server***

    d.  ***The Drivers node beneath a node representing a print
        server***

3.  You want to improve the reliability of print services in your
    environment by running the printer driver for each printer installed
    on your print server in a separate process that is isolated from the
    Print Spooler service on the server. Which set of requirements will
    enable you to achieve this goal? (Choose all that apply.)

    a.  The printer drivers can be of the v3 type as long as the
        driver’s INF file indicates that the driver supports driver
        isolation. After the drivers have been installed, you must use
        Print Management to configure Set Driver Isolation to the value
        Shared.

    b.  ***The printer drivers can be of the v3 type as long as the
        driver’s INF file indicates that the driver supports driver
        isolation. After the drivers have been installed, you must use
        Print Management to configure Set Driver Isolation to the value
        Isolated.***

    c.  The printer drivers must be of the v4 type. After the drivers
        have been installed, you must use Print Management to configure
        Set Driver Isolation to the value Shared.

    d.  ***The printer drivers must be of the v4 type. After the drivers
        have been installed, you must use Print Management to configure
        Set Driver Isolation to the value Isolated.***

Lesson 2 Review
---------------

1.  Which Windows PowerShell cmdlet enables you to determine whether any
    printers installed on a print server are shared?

    a.  ***Get-Printer***

    b.  Get-PrinterConfiguration

    c.  Get-PrinterProperty

    d.  Get-PrintServer

2.  Which Windows PowerShell cmdlet can you use to unshare a printer
    that is currently shared?

    a.  Set-PrintConfiguration

    b.  Set-PrinterProperty

    c.  ***Set-Printer***

    d.  Get-Printer

3.  You want to install a new printer on a print server running Windows
    Server 2012 RThe print device uses the HP LaserJet 6L PS Class
    Driver printer driver and requires a standard TCP/IP printer port.
    You used Notepad to create a text file named install.ps1 that
    contains the following Windows PowerShell commands:\
    Click here to view code image\
    \
    Add-PrinterPort -Name "TCP66" -PrintHostAddress "172.16.11.66"\
    Add-Printer -Name "Printer66" -DriverName "HP LaserJet 6L PS Class
    Driver" \`\
    -ShareName "Printer66" -PortName "TCP66"

4.  You open a Windows PowerShell prompt on the local print server and
    run the preceding script, but it generates an error. Which of the
    following could be the cause of the error? (Choose all that apply.)

    a.  ***The required printer driver is not installed on the print
        server.***

    b.  ***There is a syntax error in the first line of the script.***

    c.  There is a syntax error in the second line of the script.

    d.  There is a syntax error in the third line of the script.

5.  You modify the install.ps1 script from the previous question so that
    it no longer generates an error when you run it. After running the
    script, you use Print Management to verify that the printer driver,
    printer port, and printer have all been installed successfully and
    that you can print a test page to the new printer. Unfortunately,
    your users indicate that they cannot print to the printer. What
    might be the reason for this?

    a.  You haven’t yet deployed a printer connection to your users.

    b.  ***The printer has not yet been shared.***

    c.  The print device has not yet been turned on.

    d.  There is a job stuck in the print queue for the printer.

410 Chapter 10 Implementing Group Policy
========================================

Lesson 1 Review
---------------

1.  You have created a flat OU structure for your domain that has only
    top-level OUs and no child OUs. Each department’s desktops, laptops,
    and users are contained in different OUs. What is the main reason
    why this design is a poor choice when it comes to implementing Group
    Policy for your environment?

    a.  It will be difficult to manage Group Policy because of the large
        number of GPOs you will need.

    b.  It will be difficult to delegate Group Policy because of the
        large number of GPOs you will need.

    c.  It will be difficult to manage Group Policy because you won’t be
        able to make effective use of Group Policy inheritance.

    d.  ***It will be difficult to delegate Group Policy because you
        won’t be able to make effective use of Group Policy
        inheritance***.

2.  You right-clicked an OU in the GPMC console tree that contains
    computers and then selected the Group Policy Update menu option from
    the context menu. The Remote Group Policy Update Results dialog box
    indicates Completed, and no error message has been displayed. You
    later discover that at least one of the Computer Configuration
    policies in the GPO linked to the OU was not refreshed on the
    computers in the OU. What could be the cause of this failure?
    (Choose all that apply.)

    a.  ***The necessary firewall ports on the targeted computers have
        not been opened to enable a remote refresh of Group Policy.***

    b.  ***The GPO that should be linked to the OU has become unlinked
        from the OU.***

    c.  ***The Computer Configuration portion of the GPO linked to the
        OU has been disabled.***

    d.  The Group Policy Remote Update Firewall Ports Starter GPO has
        been deleted from the domain.

3.  What node should you select in the console tree of the GPMC to view
    the current status of SYSVOL replication as it relates to Group
    Policy in a domain?

    a.  The root node named Group Policy Management

    b.  The node named Forest: &lt;forest\_root\_domain&gt;

    c.  The node named Domains

    d.  ***The node named &lt;domain\_name&gt;***

Lesson 2 Review
---------------

1.  Which two cmdlets can you use together to create a new GPO and link
    it using a single command?

    a.  Get-StarterGPO and New-GPO

    b.  ***New-GPO and New-GPLink***

    c.  New-GPO and Set-GPLink

    d.  Get-GPO and New-GPLink

2.  What action does the following command perform?\
    \
    Backup-GPO –All –Path \\\\HOST6\\GpoBackups

    a.  The command backs up the GPO named All to the C:\\GpoBackups
        folder on HOST6.

    b.  The command backs up the GPO named All to the GpoBackups share
        on HOST6.

    c.  The command backs up all GPOs to the C:\\GpoBackups folder on
        HOST6.

    d.  ***The command backs up all GPOs to the GpoBackups share on
        HOST6.***

Lesson 3 Review
---------------

1.  Which of the following is not true concerning Group Policy
    preferences? (Choose all that apply.)

    a.  You cannot configure preferences in local GPOs.

    b.  ***Preferences take precedence over policies when they
        conflict.***

    c.  ***When creating a new preference item, selecting the Create
        action deletes and re-creates the preference item for the
        targeted user or computer.***

    d.  You can press F3 to select a variable when configuring a field
        of a preference item in which a variable can be used.

2.  Which of the following cannot be used as a targeting item for
    preference item-level targeting?

    a.  MAC Address Range

    b.  Organizational Unit

    c.  Registry Match

    d.  ***Desktop Computer***

3.  You have configured several Drive Maps preference items so that
    users targeted by the GPO can have mapped drives to make it easier
    for them to access shared folders on the network. These shared
    folders are all located on different file servers. Occasionally, one
    of the file servers is taken down for maintenance, and you want the
    user to be able to use the remaining mapped drives when this occurs.
    Which option on the Common tab of the Drive Maps preference item can
    you configure to allow this?

    a.  ***Stop Processing Items In This Extension If An Error Occurs***

    b.  Run In Logged-on User’s Security Context (User Policy Option)

    c.  Remove This Item When It Is No Longer Applied

    d.  Apply Once And Do Not Reapply

410 Chapter 11 Configuring Windows Firewall and IPsec
=====================================================

Lesson 1 Review
---------------

1.  Which of the following statements is not true regarding firewall
    profiles in Windows Firewall with Advanced Security? (Choose all
    that apply.)

    a.  The domain profile is automatically applied to any network
        connection that Windows identifies as having a network location
        type of domain.

    b.  ***Only one firewall profile can be active at any given time.***

    c.  The default behavior of the domain profile is to block inbound
        connections unless those connections are explicitly allowed by
        firewall rules.

    d.  ***To display the currently active settings for the domain
        profile on the local computer, you can use the
        Get-NetFirewallProfile cmdlet with the –PolicyStore
        PersistentStore parameter.***

2.  You have two firewall rules configured on the computer as follows:\
    \
    Image Rule A explicitly blocks outbound traffic from the svchost.exe
    process running on the computer.\
    Image Rule B explicitly allows outbound traffic from the svchost.exe
    process running on the computer.\
    \
    In addition, the outbound default rule is set to Block. The
    svchost.exe process running on the computer attempts to send a
    packet to another computer on the network. Which answer best
    describes what will happen?

    a.  The packet will be allowed because rule B has a higher priority
        than rule A.

    b.  The packet will be blocked because rule B has a higher priority
        than rule A.

    c.  ***The packet will be blocked because rule A has a higher
        priority than rule B.***

    d.  The packet will be blocked because the outbound default rule is
        set to Block.

3.  You want to create a firewall rule that blocks inbound traffic to
    %windir%regedit.exe on the computer. Which type of rule can you use
    to do this? (Choose all that apply.)

    a.  ***Program rule***

    b.  Port rule

    c.  Predefined rule

    d.  ***Custom rule***

Lesson 2 Review
---------------

1.  Diffie–Hellman Group 14 is an example of what?

    a.  An IPsec authentication method

    b.  An IPsec data-integrity algorithm

    c.  An IPsec data-encryption algorithm

    d.  ***An IPsec key-exchange algorithm***

2.  You want to use IPsec to protect communications between a server and
    computers on a specific subnet of your network. Which type of
    connection security rule can you create to do this? (Choose all that
    apply.)

    a.  Isolation rule

    b.  Authentication exemption rule

    c.  ***Server-to-server rule***

    d.  ***Custom rule***

3.  When creating connection security rules, which authentication option
    would you typically use in an environment that includes computers
    unable to use the IPsec authentication methods available with
    Windows Firewall with Advanced Security?

    a.  ***Request Authentication For Inbound And Outbound
        Connections***

    b.  Require Authentication For Inbound Connections And Request
        Authentication For Outbound Connections

    c.  Require Authentication For Inbound And Outbound Connections

    d.  Do Not Authenticate

    e.  411 Training Guide

411 Chapter 1 Deploying and updating Windows Server 2012 R2
===========================================================

Lesson 1: Configuring and servicing Windows Server images
---------------------------------------------------------

1.  You want to configure an existing Windows Server 2012 deployment
    image with several recently released software updates that are in
    .msu format without performing a build and capture. Which of the
    following commands can you use to accomplish this goal? (Choose all
    that apply.)

    a.  ImageX.exe

    b.  ***Dism.exe***

    c.  Sysprep.exe

    d.  Diskpart.exe

2.  Which of the following switches do you use with the Dism.exe utility
    if you want to add software updates in .msu format to a mounted
    image? (Choose all that apply.)

    a.  /Add-Driver

    b.  /Enable-Feature

    c.  ***/Add-Package***

    d.  /Add-ProvisionedAppxPackage

3.  Which of the following steps must you take before you can modify an
    existing offline installation image?

    a.  Commit the image.

    b.  Capture the image.

    c.  ***Mount the image.***

    d.  Discard the image.

Lesson 2: Automatically deploying Windows Server images
-------------------------------------------------------

1.  You are in the process of configuring WDS so you can use it to
    deploy a number of computers that will run the Windows Server 2012
    operating system. All of the computers in your organization have
    PXE–compliant network cards. Which of the following images must you
    import into WDS to perform a basic operating system deployment?
    (Choose all that apply.)

    a.  ***Boot image***

    b.  ***Install image***

    c.  Capture image

    d.  Discover image

2.  You have just used Windows PowerShell to add the WDS role to a
    computer in the Melbourne branch office running the Windows Server
    2012 operating system. The computer already functioned as a domain
    controller, DHCP server, and DNS server. You attempt to perform a
    test deployment of a Windows Server 2012 install image, but the PXE
    network card on the test server cannot connect to WDS. Which of the
    following strategies should you pursue to resolve this problem?
    (Choose all that apply.)

    a.  ***Configure WDS not to listen on DHCP ports.***

    b.  Configure WDS not to listen on DNS ports.

    c.  ***Configure DHCP options to support WDS.***

    d.  Authorize the WDS server in AD.

3.  At the moment, WDS does not respond to client computers. You want to
    configure WDS so it responds to all clients, but an administrator
    must manually approve deployments to any computers with unrecognized
    MAC addresses. Which of the following settings must you configure to
    accomplish this goal? (Choose two. Each answer forms part of a
    complete solution.)

    a.  Do Not Respond To Any Client Computers

    b.  ***Require Administrator Approval For Unknown Computers***

    c.  Respond Only To Known Client Computers

    d.  ***Respond To All Client Computers (Known And Unknown)***

Lesson 3: Servicing and updating deployed servers
-------------------------------------------------

1.  You are in the process of configuring WSUS 4.0 to manage software
    updates for computers in your organization. You have created a WSUS
    computer group named Sydney-Servers. You want all servers that have
    computer accounts in the Sydney-Servers OU to be automatically added
    to this computer group. Which of the following group policies would
    you configure to assign the servers in the Sydney-Servers OU to the
    Sydney-Servers WSUS computer group? (Choose all that apply.)

    a.  Configure Automatic Updates

    b.  ***Enable Client-Side Targeting***

    c.  Delay Restart For Scheduled Installations

    d.  Specify An Intranet Microsoft Update Service Location

2.  Your organization has a single WSUS server named SYDNEY-WSUS. You
    want to ensure that all software updates marked as Security and
    Critical for Windows Server 2012 R2 are automatically deployed to a
    group of computers in the Sydney office that are part of the
    development environment. The deployment of these updates should not
    require explicit administrator approval. (Choose three. Each answer
    forms part of a complete solution.)

    a.  Create a local security group on SYDNEY-WSUS named UpdateTest.

    b.  ***Create a WSUS group on SYDNEY-WSUS named UpdateTest.***

    c.  ***Add all computers that are part of the development
        environment to UpdateTest.***

    d.  ***Create an automatic approval rule for Critical and Security
        updates for the UpdateTest group.***

3.  You are in the process of configuring WSUS servers in the Melbourne
    and Perth branch offices. You have already configured a WSUS server
    in the Sydney head office. You want to have a consistent set of
    update approvals across the organization, but have each branch
    office server retrieve updates from the Microsoft Update servers on
    the Internet. Clients in each branch office should retrieve updates
    from their local WSUS server. Which of the following settings should
    you configure? (Choose all that apply.)

    a.  Configure the Sydney server as a replica of the Melbourne and
        Perth servers.

    b.  ***Configure the Melbourne and Perth servers to store update
        files locally. Enable the Download files from Microsoft Update;
        do not download from upstream server option.***

    c.  Configure the Melbourne and Perth servers to not store update
        files locally.

    d.  ***Configure the Melbourne and Perth servers as replicas of the
        Sydney WSUS server.***

411 Chapter 2 Managing account policies and service accounts
============================================================

Lesson 1: Implementing domain password and lockout policies
-----------------------------------------------------------

1.  You want to ensure that users can’t have a password shorter than 10
    characters and must keep any new password for a week. Which of the
    following Group Policy items should you configure to accomplish this
    goal? (Choose all that apply.)

    a.  Enforce Password History

    b.  ***Minimum Password Length***

    c.  ***Minimum Password Age***

    d.  Maximum Password Age

2.  You want to ensure that users change their passwords every 4 weeks
    and don’t use any of their 10 previous passwords. Which of the
    following policies should you configure to accomplish this goal?
    (Choose all that apply.)

    a.  ***Maximum Password Age***

    b.  Minimum Password Age

    c.  Minimum Password Length

    d.  ***Enforce Password History***

3.  You want to ensure that users cannot use part of their user name as
    part of their password. Which of the following policies must you
    configure to accomplish this goal? (Choose all that apply.)

    a.  Minimum Password Age

    b.  ***Passwords Must Meet Complexity Requirements***

    c.  Enforce Password History

    d.  Minimum Password Length

4.  You want to ensure that users who enter five incorrect passwords in
    succession in a 2-hour period have their account locked out. Five
    incorrect passwords in succession entered in a 125-minute period
    should not trigger an account lockout. Which of the following Group
    Policy items must you configure to accomplish this goal? (Choose all
    that apply.)

    a.  Password Policy\\Minimum Password Length

    b.  Account Lockout Policy\\Account Lockout Duration

    c.  ***Account Lockout Policy\\Account Lockout Threshold***

    d.  ***Account Lockout Policy\\Reset Account Lockout Counter
        After***

5.  Your organization has a single AD DS domain forest, and its domain
    name is contoso.internal. There is one site named Melbourne. All
    user accounts are located in a special OU named User\_Accounts. All
    computer accounts are located in a special OU named
    Computer\_Accounts. You want to apply a password and account lockout
    policy to all user accounts in the domain. Which of the following
    steps should you take to accomplish that goal? (Choose all that
    apply.)

    a.  Apply a GPO with a password and an account lockout policy to the
        User\_Accounts OU.

    b.  Apply a GPO with a password and an account lockout policy to the
        Computer\_Accounts OU.

    c.  Apply a GPO with a password and an account lockout policy to the
        Melbourne site.

    d.  ***Configure the password and account lockout policies in the
        contoso.internal Default Domain GPO.***

Lesson 2: Using fine–grained password policies
----------------------------------------------

1.  You want to configure a separate password policy for members of the
    systems administration team. The user accounts of all members of the
    systems administration team are located in the
    Systems\_Administration OU. Which of the following steps can you
    take to accomplish this goal? (Choose all that apply.)

    a.  ***Create a security group named Systems\_Administrators. Place
        all the user accounts of the systems administration team in this
        security group.***

    b.  Create a PSO and apply it to the Systems\_Administration OU.

    c.  ***Create a PSO and apply it to the Systems\_Administrators
        security group.***

    d.  Configure a GPO and apply it to the Systems\_Administration OU.

2.  Your organization has three sites: the cities of Melbourne, Sydney,
    and Brisbane. You want to configure a separate password policy for
    all users in the Brisbane site. Users in the Melbourne and Sydney
    sites should use the default domain password policy. Which of the
    following steps can you take to accomplish this goal? (Choose all
    that apply.)

    a.  Apply a GPO that contains the settings for the appropriate
        password policy to the Brisbane site.

    b.  Apply a GPO that contains the settings for the appropriate
        password policy to a security group containing the user accounts
        of all users at the Brisbane site.

    c.  ***Apply a PSO containing the appropriate password settings to a
        security group containing the user accounts of all users at the
        Brisbane site.***

    d.  Apply a PSO to the Brisbane site.

3.  Which of the following tools can you use to configure fine–grained
    password policies? (Choose all that apply.)

    a.  Group Policy Management Console

    b.  ***Active Directory Administrative Center***

    c.  Active Directory Users And Computers

    d.  Active Directory Sites And Services

4.  Rooslan and Oksana are part of the IT department, and all members of
    the department have user accounts that are members of the IT\_Staff
    security group. All user accounts for members of the IT department
    are stored in the IT\_Dept OU. You want members of the IT department
    to be subjected to a separate password policy from the rest of the
    organization. Rooslan and Oksana in turn need to be subject to a
    password policy that is different from both the organizational
    password policy and the password policy applied to the rest of the
    IT department. No policies are currently in place. Which of the
    following steps should you take to accomplish this goal? (Choose all
    that apply.)

    a.  ***Edit the Default Domain Policy and configure the password
        policy for the organization.***

    b.  ***Create a PSO that applies to the IT\_Staff security group,
        which reflects the password policy that must be applied to the
        IT department. Assign this PSO a precedence of 20.***

    c.  Create a PSO that reflects the password policy that should apply
        to Oksana and Rooslan and apply it to their user accounts.
        Assign this PSO a precedence of 30.

    d.  ***Create a PSO that reflects the password policy that should
        apply to Oksana and Rooslan and apply it to their user accounts.
        Assign this PSO a precedence of 10.***

5.  Which of the following domain functional levels are the minimum at
    which fine–grained password policies are supported? (Choose all that
    apply.)

    a.  Windows Server 2003

    b.  ***Windows Server 2008***

    c.  Windows Server 2008 R2

    d.  Windows Server 2012

Lesson 3: Mastering Group Managed Service Accounts
--------------------------------------------------

1.  Which of the following operating systems supports virtual service
    accounts?

    a.  Windows Server 2008

    b.  ***Windows Server 2012***

    c.  ***Windows Server 2008 R2***

    d.  Windows Server 2003 R2

2.  You want to deploy GMSAs in your new Windows Server 2012 R2
    environment. Which of the following Windows PowerShell cmdlets must
    you run first?

    a.  New-AdServiceAccount

    b.  Install-ADServiceAccount

    c.  Set-ADServiceAccount

    d.  ***Add-KdsRootKey***

3.  You want to configure an existing GMSA to be used by additional
    computers. Which of the following Windows PowerShell cmdlets do you
    use to accomplish this goal?

    a.  Install-ADServiceAccount

    b.  Add-KdsRootKey

    c.  New-AdServiceAccount

    d.  ***Set-ADServiceAccount***

4.  You want to use a particular GMSA on a computer running the Windows
    Server 2012 operating system. You have created and configured the
    GMSA in Active Directory. Which of the following commands must you
    run on the computer before you can configure a service to use the
    account?

    a.  Set-ADServiceAccount

    b.  Add-KdsRootKey

    c.  ***Install-ADServiceAccount***

    d.  New-AdServiceAccount

5.  Which of the following policies should you configure at the domain
    level to ensure that the clocks of domain controllers must be
    synchronized within 2 minutes of one another for Kerberos to
    function correctly?

    a.  Maximum Lifetime Of A Service Ticket

    b.  Maximum Lifetime For User Ticket Renewal

    c.  ***Maximum Tolerance For Computer Clock Synchronization***

    d.  Maximum Lifetime For User Ticket

411 Chapter 3 Configuring name resolution
=========================================

Lesson 1: Understanding DNS zones and forwarders
------------------------------------------------

1.  You want to create a new DNS zone. Only computers that are members
    of the domain should be able to update the zone. You should not have
    to perform zone updates manually. Which of the following steps
    should you take to accomplish this goal? (Choose all that apply.)

    a.  ***Configure the contoso.com zone as an Active Directory
        integrated primary.***

    b.  Configure the contoso.com zone as a standard primary zone.

    c.  ***Configure the zone to enable only secure dynamic updates.***

    d.  Configure the zone to not enable dynamic updates.

2.  Which of the following network IDs is associated with the reverse
    lookup zone 15.168.192.in-addr.arpa?

    a.  192.168.15.0 /16

    b.  15.168.192.0 /24

    c.  ***192.168.15.0 /24***

    d.  15.168.192.0 /24

3.  You want to create a delegation for the zone australia.fabrikam.com.
    This zone will be hosted on a DNS server with the IP address
    10.100.10.The DNS server that is authoritative for the zone
    fabrikam.com is hosted on a computer with the IP address
    10.10.10.Which of the following steps must you take first? (Choose
    all that apply.)

    a.  Create the zone australia.fabrikam.com on the computer that
        hosts the DNS server with the IP address 10.10.10.10.

    b.  ***Create the zone australia.fabrikam.com on the computer that
        hosts the DNS server with the IP address 10.100.10.10.***

    c.  Create the delegation using the zone fabrikam.com on the
        computer that hosts the DNS server with the IP address
        10.100.10.10.

    d.  Create the delegation using the zone fabrikam.com on the
        computer that hosts the DNS server with the IP address
        10.10.10.10.

4.  A partner organization frequently alters the IP addresses of its
    authoritative name servers. Clients in the partner DNS zone also
    change their DNS records frequently. You want to enable clients in
    your organizational network to be able to quickly resolve addresses
    in the partner’s DNS zone without worrying that your own DNS server
    is hosting stale DNS records. Which of the following should you
    create on your local DNS server to accomplish this goal? (Choose all
    that apply.)

    a.  Secondary zone

    b.  Conditional forwarder

    c.  Forwarder

    d.  ***Stub zone***

5.  You want to have all DNS requests for nonlocal addresses go to your
    ISP’s DNS server, except those for hosts located in the
    margiestravel.com zone. Any requests for hosts located in the
    margiestravel.com zone should automatically be forwarded to a DNS
    server with a specific IP address. Which of the following should you
    configure to accomplish this goal? (Choose all that apply.)

    a.  Stub zone

    b.  ***Forwarder***

    c.  ***Conditional forwarder***

    d.  Secondary zone

Lesson 2: Configuring WINS and managing GlobalNames zones
---------------------------------------------------------

1.  Which of the following technologies can you use to provide IPv6
    single-label name resolution? (Choose all that apply.)

    a.  DHCP

    b.  ***DNS GlobalNames zone***

    c.  WINS

    d.  ***PNRP***

2.  Which DHCP option should you configure to provide clients with the
    IP address of a WINS server?

    a.  006

    b.  ***044***

    c.  004

    d.  015

3.  You want to provide single-label name resolution on your
    organization’s network without deploying WINS. You must be able to
    update these records manually. Which of the following technologies
    should you use to accomplish this goal?

    a.  Reverse lookup zone

    b.  Stub zone

    c.  Secondary zone

    d.  ***GlobalNames zone***

4.  Which of the following technologies enable you to provide name
    resolution on a local area network without having to deploy a
    centralized server? (Choose all that apply.)

    a.  DNS

    b.  WINS

    c.  ***PNRP***

    d.  DHCP

5.  You have created and enabled a GlobalNames zone on a domain
    controller in your organization. You have configured the zone to
    replicate to all domain controllers in the forest. You want to
    enable the GlobalNames zone on another domain controller that hosts
    the DNS Server service. Which of the following Windows PowerShell
    cmdlets would you use to accomplish this goal? (Choose all that
    apply.)

    a.  Set-DnsServer

    b.  Set-DnsServerConditionalForwarderZone

    c.  ***Set-DnsServerGlobalNameZone***

    d.  Set-DNSServerForwarder

Lesson 3: Understanding advanced DNS options
--------------------------------------------

1.  What type of resource record do you create if you want to have a
    different name associated with an existing FQDN?

    a.  A record

    b.  MX record

    c.  ***PTR record***

    d.  CNAME record

2.  You have just deployed a server that will function as an SMTP
    gateway on your organization’s perimeter network. This server has
    been assigned an FQDN, and an entry exists pointing to the server in
    the reverse lookup zone associated with the server’s public IP
    address. Which type of resource record should you create if you want
    to ensure that the mail servers of external organizations can
    recognize this server as your organization’s external mail gateway?

    a.  CNAME record

    b.  PTR record

    c.  ***MX record***

    d.  A record

3.  Which of the following Windows PowerShell cmdlets should you use to
    create a host record that maps an FQDN with an IPv6 address?

    a.  Add-DnsServerResourceRecordCName

    b.  ***Add-DnsServerResourceRecordAAAA***

    c.  Add-DnsServerResourceRecordMX

    d.  Add-DnsServerResourceRecordPtr

4.  Which of the following can you enable to reduce the number of stale
    resource records in a zone?

    a.  Secure dynamic updates

    b.  ***Aging and scavenging***

    c.  DNSSEC

    d.  Zone transfers

5.  You want to ensure that clients can validate the authenticity of DNS
    records in several primary zones that are hosted on DNS servers in
    your organization. Which of the following should you enable to
    accomplish this goal? (Choose all that apply.)

    a.  ***DNSSEC***

    b.  Zone transfers

    c.  Aging and scavenging

    d.  Secure dynamic updates

411 Chapter 4 Administering Active Directory
============================================

Lesson 1: Managing domain controllers
-------------------------------------

1.  You want to create a copy of a virtualized domain controller. Which
    of the following conditions must be met before you can accomplish
    this goal? (Choose all that apply.)

    a.  ***The hypervisor must support VM-GenerationID.***

    b.  ***The source domain controller must be a member of the
        Cloneable Domain Controllers security group.***

    c.  The schema master must be online and running the Windows Server
        2012 or Windows Server 2012 R2 operating system.

    d.  ***The PDC emulator must be online and running the Windows
        Server 2012 or Windows Server 2012 R2 operating system.***

2.  Which operations master is responsible for ensuring that clocks are
    set consistently across members of a domain?

    a.  Infrastructure master

    b.  ***PDC emulator***

    c.  RID master

    d.  Domain naming master

    e.  Schema master

3.  You need to make updates to the Active Directory schema. Which
    operations master must be online for you to accomplish this goal?

    a.  Infrastructure master

    b.  PDC emulator

    c.  RID master

    d.  Domain naming master

    e.  ***Schema master***

4.  Which infrastructure master generates pools of unique relative
    identifiers to ensure that domain SIDs are unique? (Choose all that
    apply.)

    a.  Infrastructure master

    b.  PDC emulator

    c.  ***RID master***

    d.  Domain naming master

    e.  Schema master

5.  You want to add several new application partitions in the forest.
    Which operations master must be available to complete this task?
    (Choose all that apply.)

    a.  Infrastructure master

    b.  PDC emulator

    c.  RID master

    d.  Domain naming master

    e.  ***Schema master***

Lesson 2: Maintaining domain controllers
----------------------------------------

1.  Which of the following commands should you use to mount a snapshot
    of the AD DS database where {GUID} is the GUID associated with the
    snapshot?

    a.  Ntdsutil.exe “activate instance ntds” snapshot “unmount {GUID}”
        quit quit

    b.  ***Ntdsutil “activate instance ntds” snapshot “mount {GUID}”
        quit quit***

    c.  Ntdsutil snapshot “Activate Instance NTDS” create quit quit

    d.  Ntdsutil.exe “activate instance ntds” “semantic database
        analysis” “verbose on” “go fixup” quit quit

2.  Which of the following commands should you use to defragment the
    file that hosts the AD DS database?

    a.  Ntdsutil.exe “activate instance ntds” files integrity quit quit

    b.  ***Ntdsutil.exe “activate instance ntds” files “compact to
        c:\\\\” quit quit***

    c.  Ntdsutil.exe “activate instance ntds” snapshot “unmount {GUID}”
        quit quit

    d.  Ntdsutil “activate instance ntds” snapshot “mount {GUID}” quit
        quit

3.  Which of the following commands should you use to take a snapshot of
    the AD DS database?

    a.  ***Ntdsutil snapshot “Activate Instance NTDS” create quit
        quit***

    b.  Ntdsutil.exe “activate instance ntds” “semantic database
        analysis” “verbose on” “go fixup” quit quit

    c.  Ntdsutil.exe “activate instance ntds” files integrity quit quit

    d.  ***Ntdsutil.exe “activate instance ntds” files “compact to
        c:\\\\” quit quit***

4.  Which of the following commands should you use to form a check of
    the integrity of the file that hosts the AD DS database?

    a.  Ntdsutil.exe “activate instance ntds” “semantic database
        analysis” “verbose on” “go fixup” quit quit

    b.  Ntdsutil.exe “activate instance ntds” files “compact to c:\\\\”
        quit quit

    c.  ***Ntdsutil.exe “activate instance ntds” files integrity quit
        quit***

    d.  Ntdsutil “activate instance ntds” snapshot “mount {GUID}” quit
        quit

5.  Which of the following commands should you use to check the logical
    integrity of the AD DS database?

    a.  Ntdsutil snapshot “Activate Instance NTDS” create quit quit

    b.  Ntdsutil.exe “activate instance ntds” files integrity quit quit

    c.  Ntdsutil “activate instance ntds” snapshot “mount {GUID}” quit
        quit

    d.  ***Ntdsutil.exe “activate instance ntds” “semantic database
        analysis” “verbose on” “go fixup” quit quit***

6.  Lesson 3: Recovering Active Directory

    a.  What is the minimum forest functional level required to enable
        Active Directory Recycle Bin?

    b.  Windows Server 2003

    c.  Windows Server 2008

    d.  ***Windows Server 2008 R2***

    e.  Windows Server 2012

7.  Which console enables you to use Active Directory Recycle Bin?
    (Choose all that apply.)

    a.  Active Directory Users And Computers

    b.  ***Active Directory Administrative Center***

    c.  Active Directory Sites And Services

    d.  Active Directory Domain

8.  A domain controller’s AD DS database has become corrupt. You have a
    backup of all critical volumes, which include system state data,
    from earlier in the week. No important Active Directory objects have
    been deleted. Which of the following steps do you need to take to
    recover Active Directory? (Choose all that apply.)

    a.  Restart in DSRM.

    b.  ***Restore system state data.***

    c.  Perform an authoritative restore.

    d.  ***Perform a non-authoritative restore.***

9.  Which of the following techniques can you use to recover deleted
    user accounts in a three-domain forest configured to run at the
    Windows Server 2008 forest functional level? (Choose all that
    apply.)

    a.  ***Authoritative restore using DSRM.***

    b.  Non-authoritative restore using DSRM.

    c.  Restore by using the Active Directory Recycle Bin.

    d.  ***Restore by editing Active Directory attributes with
        ldp.exe.***

10. You want to minimize the chance that important user and computer
    accounts can be deleted. Which of the following steps can you take
    to accomplish this goal?

    a.  Enable the Active Directory Recycle Bin.

    b.  ***Configure Deleted Item Protection.***

    c.  Enable DSRM.

    d.  Change the value of the msDS-deletedObjectLifetime attribute.

411 Chapter 5 Managing Group Policy application and infrastructure
==================================================================

Lesson 1: Maintaining Group Policy Object
-----------------------------------------

1.  You have 200 individual GPO settings in a backed-up GPO named
    Melbourne-2012 that you want to include in an existing GPO named
    Sydney-201Which of the following Windows PowerShell cmdlets should
    you use to accomplish this goal?

    a.  Backup-GPO

    b.  ***Import-GPO***

    c.  Restore-GPO

    d.  Copy-GPO

2.  Prior to editing a Group Policy, your assistant makes a backup of
    the GPO that she is going to edit. Unfortunately, she makes a
    mistake in configuring the GPO. You need to revert the GPO to the
    state it was in prior to your assistant’s edits. Which of the
    following Windows PowerShell cmdlets should you use to accomplish
    this goal?

    a.  Copy-GPO

    b.  ***Restore-GPO***

    c.  Import-GPO

    d.  Backup-GPO

3.  You want to copy a GPO from one domain to another in a forest. Which
    tool should you use to ensure that references to objects in the
    source domain updated are relevant to the destination domain?
    (Choose all that apply.)

    a.  Active Directory Sites and Services

    b.  Active Directory Users and Computers

    c.  ***Migration Table Editor***

    d.  Group Policy Management Editor

4.  Which of the following security groups have the right to create GPOs
    by default? (Choose all that apply.)

    a.  ***Group Policy Creator Owners***

    b.  ***Enterprise Admins***

    c.  ***Domain Admins***

    d.  Domain Controllers

5.  You are about to make substantial modifications to the default
    domain GPO. You want to ensure that you can return to the current
    state of the GPO if the modifications cause problems. Which of the
    following Windows PowerShell cmdlets should you use?

    a.  Copy-GPO

    b.  Restore-GPO

    c.  Import-GPO

    d.  ***Backup-GPO***

Lesson 2: Managing the application of Group Policy
--------------------------------------------------

1.  You want to ensure that a Group Policy applies only to computers
    that have more than 2 gigabytes (GB) of disk space. Which of the
    following should you configure to accomplish this goal?

    a.  Security filtering

    b.  ***WMI filtering***

    c.  Loopback processing

    d.  Slow-link processing

2.  A Group Policy named Alpha applies at the site level. A Group Policy
    named Beta is assigned link order 2 at the domain level. A Group
    Policy named Gamma is assigned link order 1 at the domain level. A
    Group Policy named Delta is assigned to the Research OU. A computer
    account is located in the Research OU. If the same setting is
    configured differently in the Alpha, Beta, Gamma, and Delta GPOs,
    which GPO’s version of this setting will apply to the computer?

    a.  Alpha

    b.  Beta

    c.  Gamma

    d.  ***Delta***

3.  A Group Policy named Alpha applies at the site level. A Group Policy
    named Beta is assigned link order 2 at the domain level. A Group
    Policy named Gamma is assigned link order 1 at the domain level. A
    Group Policy named Delta is assigned to the Research OU. A computer
    account is located in the Research OU. GPO Gamma is configured with
    the No Override setting. If the same setting is configured
    differently in the Alpha, Beta, Gamma, and Delta GPOs, which GPO’s
    version of this setting will apply to the computer?

    a.  Alpha

    b.  Beta

    c.  ***Gamma***

    d.  Delta

4.  A Group Policy named Alpha applies at the site level. A Group Policy
    named Beta is assigned link order 2 at the domain level. A Group
    Policy named Gamma is assigned link order 1 at the domain level. A
    Group Policy named Delta is assigned to the Research OU. A computer
    account is located in the Research OU. GPO Beta is configured with
    the No Override setting. OU Research is configured with the Block
    Inheritance setting. If the same setting is configured differently
    in GPOs Alpha, Beta, Gamma, and Delta, which GPO’s version of this
    setting will apply to the computer?

    a.  Alpha

    b.  ***Beta***

    c.  Gamma

    d.  Delta

5.  You have a policy applied at the domain level that you don’t want
    applied to five computers in your organization. Which of the
    following should you configure to accomplish this goal?

    a.  ***Security filtering***

    b.  WMI filtering

    c.  Loopback processing

    d.  Slow-link processing

411 Chapter 6 Group Policy settings and preferences
===================================================

Lesson 1: Folder redirection, software installation, and scripts
----------------------------------------------------------------

1.  You are planning the deployment of scripts using Group Policy. You
    want to have a script run each time a user logs off that copies all
    their local files to a backup location on the network. Which of the
    following Group Policy items could you configure to accomplish this
    goal?

    a.  Startup script

    b.  ***Logoff script***

    c.  Shutdown script

    d.  Logon script

2.  A specific user who has the sole account in a specific OU always
    uses the same computer. The computer account is in an OU by itself.
    You want a particular software package to install the next time the
    user’s computer starts. Which of the following steps should you take
    to accomplish this goal?

    a.  Publish the package using the Computer
        Configuration\\Policies\\Software Settings node.

    b.  ***Assign the package using the Computer
        Configuration\\Policies\\Software Settings node.***

    c.  Publish the package using the User
        Configuration\\Policies\\Software Settings node.

    d.  Assign the package using the User
        Configuration\\Policies\\Software Settings node.

3.  You want to have three network drives automatically mapped each time
    a user signs on to the computer. This operation should occur using a
    script applied through Group Policy. Which of the following should
    you configure to accomplish this goal?

    a.  Startup script

    b.  Logoff script

    c.  Shutdown script

    d.  ***Logon script***

4.  You want to ensure that items such as folders and documents that a
    user stores on their desktop are available to them independently of
    which computer they sign on to in your organization’s AD DS domain.
    Which of the following Folder Redirection policies should you
    configure to accomplish this goal?

    a.  AppData(Roaming)

    b.  ***Desktop***

    c.  Documents

    d.  Favorites

5.  A specific user who has the sole account in a specific OU always
    uses the same computer. The computer account is also in an OU by
    itself. You want a particular software package to install the next
    time the user’s logs on. Which of the following steps should you
    take to accomplish this goal? (Choose all that apply.)

    a.  ***Assign the package using the User
        Configuration\\Policies\\Software Settings node.***

    b.  Publish the package using the User
        Configuration\\Policies\\Software Settings node.

    c.  Assign the package using the Computer
        Configuration\\Policies\\Software Settings node.

    d.  Publish the package using the Computer
        Configuration\\Policies\\Software Settings node.

6.  You want to ensure that a user’s Internet Explorer bookmarks are
    available to the user when they sign on to any computer in your
    organization’s Active Directory Domain Services (AD DS) domain.
    Which of the following Folder Redirection policies should you
    configure to accomplish this goal? (Choose all that apply.)

    a.  ***Favorites***

    b.  Documents

    c.  Desktop

    d.  AppData(Roaming)

7.  You want to force each computer that has an account in an Active
    Directory OU to perform a time synchronization against a specific
    time server each time the computer starts. You have created a script
    that performs this task. Which of the following steps must you take
    to ensure that the script is run in an appropriate manner? (Choose
    two. Each answer forms part of a complete solution.)

    a.  ***Create a GPO and apply it to the OU that hosts the
        computers***.

    b.  Create a GPO and apply it to the domain.

    c.  ***Configure a policy in the Computer
        Configuration\\Policies\\Windows Settings\\Scripts
        (Startup/Shutdown) node.***

    d.  Configure a policy in the User Configuration\\Policies\\Windows
        Settings\\Scripts (Logon/Logoff) node.

8.  You want a particular package to be available to users, but they
    need to install it using the Programs And Features item in Control
    Panel. Which of the following strategies could you use to accomplish
    this goal?

    a.  ***Publish the package using the User
        Configuration\\Policies\\Software Settings node***.

    b.  Assign the package using the User
        Configuration\\Policies\\Software Settings node.

    c.  Publish the package using the Computer
        Configuration\\Policies\\Software Settings node.

    d.  Assign the package using the Computer
        Configuration\\Policies\\Software Settings node.

Lesson 2: Administrative templates
----------------------------------

1.  You are the administrator at contoso.com, and you want to configure
    the central store for Group Policy. Which of the following steps
    should you take to accomplish this goal?

    a.  ***Copy the C:\\Windows\\PolicyDefinitions folder and its
        contents to \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies.***

    b.  Copy the \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies folder
        and its contents to the C:\\Windows\\PolicyDefinitions folder.

    c.  Copy the C:\\Windows\\SYSVOL folder and its contents to
        \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies.

    d.  Copy the \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies folder
        and its contents to C:\\Windows\\SYSVOL folder.

2.  You are the systems administrator of contoso.com in North America,
    and you need to import a new administrative template into the Group
    Policy store. The administrative template has two files:
    Application.admx and Application.adml. Which of the following steps
    should you take to import the administrative template? (Choose two.
    Each answer forms part of a complete solution.)

    a.  ***Copy Application.admx to
        \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies\\PolicyDefinitions***.

    b.  Copy Application.adml to
        \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies\\PolicyDefinitions\\.

    c.  Copy Application.admx to
        \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies\\PolicyDefinitions\\en-US.

    d.  ***Copy Application.adml to
        \\\\Contoso.com\\Sysvol\\Contoso.com\\Policies\\PolicyDefinitions\\en-US.***

Lesson 3: Group Policy preferences
----------------------------------

1.  You are configuring Power Options Group Policy preferences. You want
    this power plan to apply only between midnight and 6 A.M. Which of
    the following item-level targeting options can you configure to
    accomplish this goal?

    a.  Security Group

    b.  ***Time Range***

    c.  Operating System

    d.  Disk Space

2.  You want to add a specific user account to all computers in an OU.
    Which Group Policy preferences item can you configure to accomplish
    this goal?

    a.  Folder

    b.  Devices

    c.  Internet Settings

    d.  ***Local Users And Groups***

3.  You want to configure a drive map, but this drive map should be
    configured only for computers used by executives. Which of the
    following item-level targeting options can you configure to
    accomplish this goal?

    a.  Disk Space

    b.  Operating System

    c.  Time Range

    d.  ***Security Group***

4.  You want to delete the contents of the C:\\Windows\\Temp folder on a
    number of computers in your organization each time Group Policy
    refreshes. Which of the following Group Policy preferences can you
    configure to accomplish this goal?

    a.  Local Users And Groups

    b.  ***Folder***

    c.  Devices

    d.  Internet Settings

5.  A particular set of environment variables should apply only to
    computers running the Windows 7 operating system, not to computers
    running Windows Vista or Windows Which of the following item-level
    targeting options should you configure when setting up Group Policy
    preferences to apply these environment variables?

    a.  Time Range

    b.  ***Operating System***

    c.  Security Group

    d.  Disk Space

6.  You want to block users from using a specific type of USB storage
    drive on computers in your organization. Which of the following
    Group Policy preferences can you configure to accomplish this goal?

    a.  Internet Settings

    b.  ***Devices***

    c.  Folder

    d.  Local Users And Groups

7.  You are configuring a Group Policy preference immediate task to
    clean out the temporary directory only if the computer has less than
    20 GB free space. Which of the following item-level targeting
    options can you configure to accomplish this goal?

    a.  Security Group

    b.  Time Range

    c.  Operating System

    d.  ***Disk Space***

8.  You want to configure VPN settings on a large number of client
    computers in your organization. Which of the following Group Policy
    preferences can you use to accomplish this goal?

    a.  Local Users And Groups

    b.  Folder

    c.  Devices

    d.  ***Internet Settings***

411 Chapter 7 Administering Network Policies
============================================

Lesson 1: Understanding Network Policy Server policies
------------------------------------------------------

1.  You are configuring a connection request policy for clients that
    will be connecting to a Virtual Desktop Infrastructure (VDI)
    deployment on a trusted network from clients on the Internet.
    Clients should be able to connect using a Remote Desktop connection.
    Which of the following connection types should you configure when
    creating a connection request policy?

    a.  HCAP server

    b.  Remote access server

    c.  DHCP server

    d.  ***RD Gateway***

2.  You want to configure a connection request policy to support clients
    connecting to the internal network from clients on the Internet
    using the L2TP/IPsec protocol. Which of the following connection
    types should you use when creating a connection request policy to
    support this configuration?

    a.  RD Gateway

    b.  DHCP server

    c.  ***Remote access server***

    d.  HCAP server

3.  You want to configure a connection request policy to support
    integration with Cisco NAWhich of the following connection types
    should you use when creating a connection request policy to support
    this configuration?

    a.  Remote access server

    b.  ***HCAP server***

    c.  DHCP server

    d.  RD Gateway

4.  You want to configure a network policy that applies only at certain
    times of the week. Which of the following conditions should you use
    when creating a network policy to meet this goal?

    a.  Windows Groups

    b.  Machine Groups

    c.  User Groups

    d.  ***Day And Time Restrictions***

5.  You want to configure a network policy that applies to certain
    computers, but not others. Which of the following conditions should
    you use to accomplish this goal? (Choose all that apply.)

    a.  ***Windows Groups***

    b.  User Groups

    c.  Day And Time Restrictions

    d.  ***Machine Groups***

Lesson 2: Understanding Network Access Protection enforcement methods
---------------------------------------------------------------------

1.  You want to limit connections from the Internet to your
    organization’s Remote Desktop session host servers to those clients
    that can demonstrate that they are healthy. Which NAP enforcement
    method should you implement?

    a.  IPsec enforcement

    b.  802.1X enforcement

    c.  VPN enforcement

    d.  ***RD Gateway enforcement***

2.  You want to stop laptop computers that are not up to date with
    software updates and antimalware definitions from connecting to your
    organization’s wireless access points. Which NAP enforcement method
    should you implement?

    a.  ***802.1X enforcement***

    b.  DHCP enforcement

    c.  RD Gateway enforcement

    d.  VPN enforcement

3.  You want to provide IPv4 address leases only to computers that are
    up to date with software updates and antimalware definitions. Which
    NAP enforcement method should you implement?

    a.  VPN enforcement

    b.  802.1X enforcement

    c.  IPsec enforcement

    d.  ***DHCP enforcement***

4.  You want to allow only computers that are up to date with software
    updates and antimalware definitions to communicate in an
    authenticated and encrypted manner with secure servers on a trusted
    internal network. Which NAP enforcement method should you implement?

    a.  DHCP enforcement

    b.  ***IPsec enforcement***

    c.  VPN enforcement

    d.  RD Gateway enforcement

5.  You want to limit remote access connections from hosts on the
    Internet using LT2P to client computers that are up to date with
    software updates and antimalware definitions. Which NAP enforcement
    method should you implement?

    a.  RD Gateway enforcement

    b.  802.1X enforcement

    c.  ***VPN enforcement***

    d.  IPsec enforcement

Lesson 3: Understanding Network Access Protection infrastructure
----------------------------------------------------------------

1.  Which of the following should you configure if you want clients to
    be able to return to a healthy state after being found noncompliant
    by the NAP process?

    a.  SHV

    b.  Health policy

    c.  ***Remediation server group***

    d.  HRA

2.  Which of the following NPS role services must be deployed to issue
    health certificates when you deploy NAP with IPsec?

    a.  Health policy

    b.  ***Remediation server group***

    c.  SHV

    d.  ***HRA***

3.  In which of the following NAP components do you configure individual
    items such as whether a firewall is enabled or an antivirus
    application is installed?

    a.  ***SHV***

    b.  HRA

    c.  Health policy

    d.  Remediation server group

4.  Which of the following do you select as a benchmark for health when
    configuring a NAP policy?

    a.  Remediation server group

    b.  ***Health policy***

    c.  SHV

    d.  HRA

411 Chapter 8 Administering Remote Access
=========================================

Lesson 1: Configuring RADIUS
----------------------------

1.  Your organization has three Active Directory forests that don’t have
    a trust relationship. You have a single VPN server that handles all
    incoming VPN connections. This VPN server is a dedicated hardware
    device deployed on the perimeter network. You want to configure the
    deployment so that authentication and authorization traffic is
    forwarded to existing RADIUS servers in each forest based on the
    connecting user’s account properties. Which of the following must
    you deploy to accomplish this goal?

    a.  RADIUS server

    b.  ***RADIUS proxy***

    c.  RADIUS client

    d.  RADIUS accounting

2.  You want to deploy a server on your organization’s internal network
    that will respond to authentication and authorization requests from
    a dedicated hardware device that functions as a VPN server that is
    deployed on your organization’s perimeter network. Which of the
    following must you deploy to accomplish this goal?

    a.  RADIUS accounting

    b.  ***RADIUS server***

    c.  RADIUS proxy

    d.  RADIUS client

3.  Your organization has purchased a dedicated hardware device that
    functions as a VPN server, and you have deployed this device on your
    organization’s perimeter network. You want to allow your
    organization’s existing RADIUS server, deployed as a Windows Server
    2012 R2 server with the NPS enrolled to accept and respond to
    authentication and authorization traffic from this device. Which of
    the following should you configure on the server with the NPS role
    installed to accomplish this goal?

    a.  ***RADIUS client***

    b.  RADIUS accounting

    c.  RADIUS server

    d.  RADIUS proxy

4.  You want to ensure that data about authentication and authorization
    traffic forwarded to your server with the NPS role installed on the
    internal network is written to an SQL Server database rather than to
    a local file. Which of the following should you configure to
    accomplish this goal?

    a.  RADIUS proxy

    b.  RADIUS client

    c.  ***RADIUS accounting***

    d.  RADIUS server

5.  Which of the following information must you provide when configuring
    a RADIUS client on a RADIUS server? (Choose three. Each answer forms
    part of a complete solution.)

    a.  ***Friendly name***

    b.  Authentication protocol

    c.  ***IP address or FQDN***

    d.  ***Shared secret***

Lesson 2: Configuring VPN and routing
-------------------------------------

1.  You have a number of VPN clients that are running the Windows XP
    operating system. You have deployed a computer running Windows
    Server 2012 R2 as a VPN server. Which of the following VPN protocols
    can be used with Windows XP clients? (Choose all that apply.)

    a.  SSTP

    b.  IKEv2

    c.  ***L2TP/IPSec***

    d.  ***PPTP***

2.  Which of the following VPN protocols can be used only with clients
    running the Windows 7, Windows 8, or Windows 8.1 client operating
    system?

    a.  PPTP

    b.  L2TP/IPSec

    c.  ***IKEv2***

    d.  SSTP

3.  Several users in your organization regularly stay at hotels that
    have firewalls that allow only outbound traffic on TCP port 80 and
    44Which of the following VPN protocols should you enable to allow
    these users to connect to your organization’s Windows Server 2012 R2
    VPN server?

    a.  IKEv2

    b.  L2TP/IPSec

    c.  ***SSTP***

    d.  PPTP

4.  Which of the following VPN protocols support automatic reconnection
    of VPN connections for up to 8 hours without requiring manual user
    reauthentication?

    a.  SSTP

    b.  ***IKEv2***

    c.  PPTP

    d.  L2TP/IPSec

5.  You are in the process of running the Routing And Remote Access
    Setup Wizard. Which of the following options should you select if
    you want to allow a group of computers on your organization’s
    network that don’t need to be able to accept direct inbound
    communication from hosts on the Internet to share an Internet
    connection?

    a.  VPN access

    b.  Dial-up access

    c.  ***NAT***

    d.  LAN router

Lesson 3: Configuring DirectAccess
----------------------------------

1.  Which of the following client operating systems can function as a
    DirectAccess client? (Choose all that apply.)

    a.  Windows RT

    b.  ***Windows 8 Enterprise edition***

    c.  ***Windows 7 Ultimate edition***

    d.  Windows Vista Ultimate edition

2.  You want to use two-factor authentication with DirectAccess clients.
    Which of the following conditions must be met to implement this
    configuration?

    a.  The DirectAccess server’s Internet interface must be assigned a
        single public IPv4 address.

    b.  The DirectAccess server’s Internet interface must be assigned
        two consecutive public IPv4 addresses.

    c.  The DirectAccess server must be configured to use RADIUS
        authentication.

    d.  ***ISATAP must be added to the DNS global query block list on
        all DNS servers.***

3.  On which of the following servers must you deploy a web server/SSL
    certificate when deploying DirectAccess? (Choose all that apply.)

    a.  Active Directory domain controller

    b.  DNS server

    c.  DirectAccess server

    d.  ***NSL server***

4.  Which server does a client attempt to contact to determine whether
    it is on an internal trusted network before initiating a
    DirectAccess connection?

    a.  DirectAccess server

    b.  DNS server

    c.  ***NLS server***

    d.  DHCP server

5.  In which of the following situations can a DirectAccess client use
    only IP over HTTPS?

    a.  The DirectAccess server has a network interface connected
        directly to the Internet.

    b.  The DirectAccess server has a network interface with a public IP
        address and is located on a perimeter network.

    c.  ***The DirectAccess server is behind a NAT device.***

    d.  The DirectAccess server’s public interface is assigned two
        nonconsecutive public IPv4 addresses.

411 Chapter 9 Managing File Services
====================================

Lesson 1: Configuring File Server Resource Manager
--------------------------------------------------

1.  You want to stop users from saving audio and video files to shared
    folders hosted on your organization’s Windows Server 2012 R2 file
    servers. You have installed FSRM on each file server. Which of the
    following must you configure to accomplish this goal?

    a.  File Classification Rule

    b.  ***File Screen***

    c.  File Screen Template

    d.  File Groups

2.  You have configured a file screen for the Research shared folder.
    This file screen currently blocks all files except Office document
    files. You want to keep this file screen in place, but allow
    compressed files, which can’t be written to the Research folder, to
    be able to be stored in the Old\_Projects folder, a subfolder of the
    Research folder. It should not be possible for users to store
    compressed files in the Research folder or in other subfolders of
    the Research folder. Which of the following should you configure to
    accomplish this goal?

    a.  File Screen Template

    b.  ***File Screen Exception***

    c.  Classification Rule

    d.  File Groups

3.  You want to apply the same file screen to 20 different shares hosted
    on a Windows Server 2012 R2 file server. This file screen includes
    six different file groups. Which of the following should you
    configure to minimize the amount of work you need to do to
    accomplish this goal?

    a.  Configure a file group

    b.  Configure a file screen exception

    c.  ***Configure a file screen template***

    d.  Configure a quota template

4.  You are in the process of configuring a file server that hosts 40
    separate shared folders and you want to ensure that all users of
    these shared folders are subject to the same storage limit. Which of
    the following should you create and apply to accomplish this goal?

    a.  File screen

    b.  Quota

    c.  File screen template

    d.  ***Quota template***

5.  You want to have alerts automatically sent to users who consume more
    than 500 MB in a specific shared folder. Users should not be able to
    put more than 1 GB on the file share. Which of the following
    properties should you configure when creating a quota?

    a.  500 MB hard quota

    b.  ***1 GB hard quota***

    c.  500 MB soft quota

    d.  1 GB soft quota

6.  You want to have alerts automatically sent to users who consume more
    than 500 MB in a shared folder. Users should not be blocked from
    storing more data, but should be sent a storage report in the event
    that they exceed 750 MWhich of the following properties should you
    configure when creating a quota?

    a.  500 MB hard quota

    b.  750 MB hard quota

    c.  ***500 MB soft quota***

    d.  1 GB hard quota

7.  You have applied a quota to a file share. You are configuring a
    notification for the 90 percent threshold. This notification should
    forward reports to users detailing files that they have stored that
    they haven’t used recently, as well as the name and location of any
    large files. Which of the following reports should you include when
    configuring this threshold notification? (Choose all that apply.)

    a.  ***Least Recently Accessed Files***

    b.  Quota Usage

    c.  ***Large Files***

    d.  Duplicate Files

Lesson 2: Configuring a Distributed File System
-----------------------------------------------

1.  You have 30 Windows Server 2012 R2 member servers that are members
    of an Active Directory domain that is running at the Windows Server
    2003 functional level. You want to implement a DFS to simplify
    accessing of shared folders and to enable replication to different
    sites. You estimate that you will need to support approximately
    6,000 folder targets. Which of the following solutions should you
    implement? (Choose all that apply.)

    a.  ***Create a replication group. Configure the replication group
        to use the hub and spoke topology.***

    b.  Create a replication group. Configure the replication group to
        use a full mesh topology.

    c.  Configure a domain-based DFS namespace.

    d.  ***Configure a stand-alone DFS namespace***.

2.  You have nine Windows Server 2012 R2 member servers that are members
    of an Active Directory domain that is running at the Windows Server
    2012 R2 functional level. The forest is also running at the Windows
    Server 2012 R2 functional level. You want to deploy DFS so the
    namespace is still available if one namespace server is offline. You
    want to enable replication between any two servers hosting content.
    Which of the following solutions should you implement? (Choose all
    that apply.)

    a.  Configure a stand-alone DFS namespace.

    b.  ***Configure a domain-based DFS namespace.***

    c.  ***Create a replication group. Configure the replication group
        to use a full mesh topology.***

    d.  Create a replication group. Configure the replication group to
        use the hub and spoke topology.

3.  The domain that hosts the servers is running at the Windows Server
    2003 functional level. You need to support 12,000 folder targets.
    Which of the following solutions should you implement? (Choose all
    that apply.)

    a.  Create a replication group. Configure the replication group to
        use the hub and spoke topology.

    b.  ***Create a replication group. Configure the replication group
        to use a full mesh topology***.

    c.  Configure a domain-based DFS namespace.

    d.  ***Configure a stand-alone DFS namespace.***

4.  Your organization’s head office is located in Melbourne, Australia,
    with branch offices in Sydney, Brisbane, Adelaide, Perth, Darwin,
    and Hobart. Your organization has a single Active Directory domain
    running at the Windows Server 2008 functional level. The forest is
    also configured to run at this functional level. You have deployed
    Windows Server 2012 R2 file servers at the head office and branch
    office locations. Each branch office location has a WAN link to the
    Melbourne office. There are no WAN links between branch offices.
    Which of the following steps should you take when configuring a DFS
    in your environment? (Choose all that apply.)

5.  Configure a stand-alone DFS namespace.

6.  ***Configure a domain-based DFS namespace.***

7.  Create a replication group. Configure the replication group to use a
    full mesh topology.

    a.  ***Create a replication group. Configure the replication group
        to use the hub and spoke topology.***

Lesson 3: Configuring file and disk encryption
----------------------------------------------

1.  Which of the following technologies enable a user to access an
    encrypted file on a file share without encrypting all files stored
    on the file share?

    a.  ***EFS***

    b.  BitLocker

    c.  IPsec

    d.  SSL

2.  You are planning to deploy EFS certificates through certificate
    services to users in your organization. You have created a new
    certificate services template. What should you configure to ensure
    that individual EFS certificates could be recovered without
    configuring the deployment so that a single certificate can decrypt
    any EFS-encrypted file?

    a.  DRA

    b.  ***KRA***

    c.  Credential roaming

    d.  Autoenrollment

3.  You want to configure a computer so that the contents of any
    BitLocker-encrypted volume from one of your organization’s
    domain-joined computers are accessible, without having to extract a
    recovery key from Active Directory. Which of the following could you
    configure to accomplish this goal?

    a.  Autoenrollment

    b.  Credential roaming

    c.  KRA

    d.  ***DRA***

4.  Your organization does not have an Active Directory Certificate
    Services deployment. You want to ensure that BitLocker recovery keys
    for encrypted volumes on domain-joined computers are easy to locate
    on a per-computer basis, even if the computer’s name is changed.
    Which of the following Group Policy items should you configure to
    accomplish this goal?

    a.  Provide the unique identifiers for your organization.

    b.  Choose drive encryption method and cipher strength.

    c.  ***Store BitLocker recovery information in AD DS.***

    d.  Choose the default folder for the recovery password.

5.  You have deployed BitLocker for all computers running Windows 8.1 in
    your organization. Each of these computers has a DHCP drive
    implemented in UEFI firmware. During software update deployment,
    when these computers need to reboot, it is necessary for a
    technician or the computer’s user to enter a PIN to enable the
    computer to restart. You want to enable automatic restarts to occur
    when computers are connected to the wired network without requiring
    a PIN to be entered. A PIN should be required if the computer is
    restarting and is not connected to the wired network. Which of the
    following solutions should you deploy to resolve this problem?
    (Choose all that apply.)

    a.  ***BitLocker To Go***

    b.  ***BitLocker Network Unlock***

    c.  Domain isolation policy

    d.  Wake on LAN

6.  Which of the following components, besides the BitLocker Network
    Unlock feature, are required to enable Network Unlock for BitLocker?
    (Choose all that apply.)

    a.  ***WDS server role***

    b.  ***DHCP server role***

    c.  WINS server role

    d.  Online certificate status protocol (OCSP) array

411 Chapter 10 Monitoring and auditing
======================================

Lesson 1: Monitoring servers
----------------------------

1.  You want to collect processor, memory, and network interface
    utilization data over the course of several hours. You need to be
    able to review the data at a later period in time. Which of the
    following tools should you use to accomplish this goal?

    a.  Resource Monitor

    b.  Task Manager

    c.  ***Data collector set***

    d.  Message Analyzer

2.  A particular network service on a computer running Windows Server
    2012 R2 that you are responsible for managing is not functioning
    correctly. You suspect that the service is listening on a TCP port
    that Windows Firewall is configured to block, but you don’t know
    which TCP port the service uses. Which of the following tools should
    you use to determine this information?

    a.  Task Manager

    b.  ***Resource Monitor***

    c.  Message Analyzer

    d.  Data collector set

3.  Which of the following tools can you use to capture and analyze
    network traffic?

    a.  Data collector set

    b.  ***Message Analyzer***

    c.  Resource Monitor

    d.  Task Manager

4.  You are configuring event log subscriptions. Computer MEL-DC will
    function as the event log collector, and computers MEL-A, MEL-B, and
    MEL-C will function as the event log sources. You want MEL-DC to
    collect events from the security logs on computers MEL-A, MEL-B, and
    MEL-To which of the following security groups on MEL-A, MEL-B, and
    MEL-C should you add the computer account of MEL-DC?

    a.  Backup operators

    b.  Power users

    c.  Event log readers

    d.  ***Administrators***

Lesson 2: Configuring advanced audit policies
---------------------------------------------

1.  Which of the following commands should you use to enable success and
    failure auditing for all audit policies under the Object Access
    category on a computer running Windows Server 2012 R2?

    a.  Auditpol.exe /set /subcategory:"File System" /success:Enable
        /failure:Enable

    b.  ***Auditpol.exe /set /Category:"Object Access" /success:Enable
        /Failure:Enable***

    c.  Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Disable

    d.  Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Enable

2.  You want to enable failure auditing, but not success auditing, for
    all audit policies under the Object Access category on a computer
    running Windows Server 2012 RWhich of the following commands should
    you use to accomplish this goal?

    a.  ***Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Enable***

    b.  Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Disable

    c.  Auditpol.exe /set /Category:"Object Access" /success:Enable
        /Failure:Enable

    d.  Auditpol.exe /set /subcategory:"File System" /success:Enable
        /failure:Enable

3.  You want to enable success and failure auditing only for the File
    System subcategory. Which of the following commands should you use
    to accomplish this goal?

    a.  Auditpol.exe /set /Category:"Object Access" /success:Enable
        /Failure:Enable

    b.  Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Enable

    c.  ***Auditpol.exe /set /subcategory:"File System" /success:Enable
        /failure:Enable***

    d.  Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Disable

4.  You want to disable all success and failure auditing on all auditing
    subcategories under the Object Access category. Which of the
    following commands should you use to accomplish this goal?

    a.  ***Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Disable***

    b.  Auditpol.exe /get /Category:"Object Access" /success:Disable
        /Failure:Enable

    c.  Auditpol.exe /set /Category:"Object Access" /success:Enable
        /Failure:Enable

    d.  Auditpol.exe /set /subcategory:"File System" /success:Enable
        /failure:Enable

412 Chapter 1 Advanced Active Directory infrastructure
======================================================

Lesson 1: Configuring domains and forests
-----------------------------------------

1.  You are in the process of designing a new Active Directory
    implementation for your organization. Two different departments in
    your organization will be adopting applications that have separate
    and mutually exclusive Active Directory schema requirements. Which
    of the following Active Directory structures should you use in your
    design to accommodate these requirements?

    a.  A single forest with a single domain tree

    b.  A single forest with multiple domain trees

    c.  ***Multiple forests***

    d.  A single domain forest

2.  You are the systems administrator for Tailspin Toys and its
    subsidiary company Wingtip Toys. You are in the process of designing
    a new Active Directory structure. You’ve been asked to ensure that
    employees who work in the Tailspin Toys part of the organization log
    into a domain named tailspintoys.com and that employees who work in
    the Wingtip Toys part of the organization log into a domain named
    wingtiptoys.com. You want to do this in the simplest way possible
    and minimize the creation of trust relationships. Which of the
    following Active Directory structures should you use in your design
    to accommodate these requirements?

    a.  A single domain forest

    b.  Multiple forests

    c.  ***A single forest with multiple domain trees***

    d.  A single forest with a single domain tree

3.  You want to deploy several domain controllers running the Windows
    Server 2012 R2 operating system. You will eventually decommission
    existing domain controllers and bring the domain up to the Windows
    Server 2012 R2 domain functional level. What is the minimum domain
    functional level required to support the introduction of domain
    controllers running the Windows Server 2012 R2 operating system?

    a.  ***Windows Server 2003 domain functional level***

    b.  Windows Server 2008 domain functional level

    c.  Windows Server 2012 domain functional level

    d.  Windows Server 2012 R2 domain functional level

4.  At which forest functional levels is the Active Directory Recycle
    Bin available? (Choose all that apply.)

    a.  ***Windows Server 2012 forest functional level***

    b.  ***Windows Server 2008 R2 forest functional level***

    c.  Windows Server 2008 forest functional level

    d.  Windows Server 2003 forest functional level

Lesson 2: Configuring trusts
----------------------------

1.  You have a 30-domain Active Directory forest that has contoso.com as
    its root domain. This forest has five separate domain trees. Users
    in the Melbourne.australia.pacific.contoso.com domain report that
    there are substantial authentication delays when they try to access
    resources in the Auckland.newzealand.adatum.com domain. Both domains
    are located in the same forest. Which of the following trust types
    would you configure to resolve this problem?

    a.  Forest trust

    b.  External trust

    c.  Realm trust

    d.  ***Shortcut trust***

2.  You are a systems administrator at a local university. The
    university has a deployment of Linux servers and workstations that
    are members of a Kerberos V5 realm. You want to allow users of the
    Linux workstations to have access to several file shares hosted in
    one of your organization’s Active Directory domains. Which of the
    following trust types would you implement to accomplish this goal?

    a.  Shortcut trust

    b.  ***Realm trust***

    c.  Forest trust

    d.  External trust

3.  Your organization recently acquired a subsidiary company. Your
    organization currently has a 10-domain Active Directory forest
    running at the Windows Server 2012 R2 functional level. The
    subsidiary company has a five-domain Active Directory forest running
    at the Windows Server 2008 functional level. The subsidiary company
    has implemented a number of schema modifications to support a custom
    application. You want to allow users in the subsidiary company to be
    able to access resources hosted in your organization’s forest. Users
    in your organization’s forest should also be able to access
    resources in the subsidiary company’s forest. Which of the following
    trust relationships should you configure to accomplish this goal?

    a.  External trust

    b.  ***Forest trust***

    c.  Realm trust

    d.  Shortcut trust

4.  You are the senior systems administrator of the contoso.com forest.
    Users in the australia.pacific.contoso.com domain need access to
    resources hosted in one domain of a partner organization’s Active
    Directory forest. These users shouldn’t have access to any other
    domain in the partner organization’s forest. Users from other
    domains in your organization’s forest should also not have access to
    resources in the partner organization’s forest. Which of the
    following trust types would you configure in this scenario?

    a.  ***External trust***

    b.  Realm trust

    c.  Shortcut trust

    d.  Forest trust

412 Chapter 2 Active Directory sites and replication
====================================================

Lesson 1: Configuring sites
---------------------------

1.  You want to manually reregister a specific domain controller’s SRV
    records. Which service should you restart to accomplish this goal?

    a.  ***Netlogon***

    b.  Secondary Logon

    c.  Active Directory Domain Services

    d.  DNS Server

2.  You installed two domain controllers at a new branch office site
    before you created the appropriate objects using the Active
    Directory Sites and Services console. You have since created the
    appropriate subnet and site objects. Which of the following Windows
    PowerShell cmdlets could you use to move these domain controllers to
    the newly created appropriate site?

    a.  New-ADReplicationSubnet

    b.  New-ADReplicationSiteLink

    c.  ***Move-ADDirectoryServer***

    d.  New-ADReplicationSite

3.  Your organization has just opened a new branch office in the city of
    Hobart. You have assigned this branch office the IPv4 address range
    10.100.10.0/2Which of the following Windows PowerShell cmdlets would
    you use to add this Ipv4 address range to Active Directory so that
    it is used when determining replication topology?

    a.  New-ADReplicationSiteLink

    b.  Move-ADDirectoryServer

    c.  New-ADReplicationSite

    d.  ***New-ADReplicationSubnet***

4.  Your organization has just opened a new branch office in the city of
    Hobart. You have used the Active Directory Sites and Services
    console to enter the IP address range used at the site into Active
    Directory. You now want to create an Active Directory site called
    HBA-SITE and to associate it with this IP address range. Which of
    the following Windows PowerShell cmdlets could you use to accomplish
    this goal?

    a.  ***New-ADReplicationSite***

    b.  New-ADReplicationSubnet

    c.  Move-ADDirectoryServer

    d.  New-ADReplicationSiteLink

5.  Your organization has just opened a new branch office in the city of
    Hobart. You want to associate the newly created HBA-SITE site with
    the SYD-SITE site as these two sites are connected to each other by
    a high-speed broadband link. Which of the following Windows
    PowerShell cmdlets could you use to accomplish this goal?

    a.  New-ADReplicationSite

    b.  New-ADReplicationSubnet

    c.  ***New-ADReplicationSiteLink***

    d.  Move-ADDirectoryServer

Lesson 2: Active Directory replication
--------------------------------------

1.  As a part of a security audit, you are attempting to verify which
    user accounts have replicated to the RODC named ADL-RO DThis RODC is
    running on the server core version of Windows Server 2012 RWhich of
    the following commands could you use to accomplish this goal?

    a.  ***Repadmin /prp view ADL-RODC Reveal***

    b.  Repadmin /replsummary ADL-RODC

    c.  Repadmin /kcc ADL-RODC

    d.  Repadmin /showrepl ADL-RODC

    e.  Repadmin /syncall ADL-RODC

2.  You have just substantially changed the structure of your
    organization’s WAN links. You want to trigger an update on SYD-DC of
    the inbound replication topology. Which of the following commands
    could you use to accomplish this goal?

    a.  Repadmin /prp view SYD-DC Reveal

    b.  Repadmin /syncall SYD-DC

    c.  Repadmin /showrepl SYD-DC

    d.  ***Repadmin /kcc SYD-DC***

    e.  Repadmin /replsummary SYD-DC

3.  You are in the process of diagnosing replication problems to a DC
    named CBR-DC, which is located in your organization’s Canberra
    branch office. You want to view information about the failure and
    success percentages of both inbound and outbound replication
    operations. Which of the following commands could you use to
    accomplish this goal?

    a.  Repadmin /showrepl CBR-DC

    b.  Repadmin /syncall CBR-DC

    c.  Repadmin /kcc CBR-DC

    d.  Repadmin /prp view CBR-DC Reveal

    e.  ***Repadmin /replsummary CBR-DC***

4.  You want to force the domain controller MEL-DC to immediately
    perform synchronization with all its replication partners. Which of
    the following commands would you use to accomplish this goal?

    a.  Repadmin /showrepl MEL-DC

    b.  ***Repadmin /syncall MEL-DC***

    c.  Repadmin /kcc MEL-DC

    d.  Repadmin /replsummary MEL-DC

    e.  Repadmin /prp view MEL-DC Reveal

5.  You are attempting to diagnose some replication problems with the
    domain controller BNE-DYou want to show status information on this
    domain controller’s most recent attempts to perform inbound
    replication. Which of the following commands would you use to
    accomplish this goal?

    a.  Repadmin /syncall MEL-DC

    b.  Repadmin /kcc MEL-DC

    c.  ***Repadmin /showrepl MEL-DC***

    d.  Repadmin /replsummary MEL-DC

    e.  Repadmin /prp view MEL-DC Reveal

6.  Up until last night, the Perth site has had an RODC that was kept in
    a locked cupboard. This RODC was used to authenticate computer and
    user accounts in the Perth site. In the early hours of the morning,
    the Perth site was robbed and the RODC was stolen. As a part of your
    response to this incident, you are in the process of deleting the
    computer account of the Perth site RODWhich of the following steps
    might you need to take after removing this account? (Choose all that
    apply.)

    a.  Assign users new passwords.

    b.  Enable user accounts.

    c.  ***Rejoin computers to the domain***.

    d.  Enable computer accounts.

7.  What is the minimum domain functional level required before you can
    update SYSVOL replication to use DFS instead of FRS?

    a.  Windows Server 2003

    b.  ***Windows Server 2008***

    c.  Windows Server 2008 R2

    d.  Windows Server 2012

8.  You have recently transitioned from a Windows Server 2003 domain
    functional level to a Windows Server 2012 R2 domain functional
    level. Which of the following utilities would you use to determine
    whether FRS or DFS is being used to support SYSVOL replication?

    a.  ***dfsrmig.exe***

    b.  repadmin.exe

    c.  dcdiag.exe

    d.  dnscmd.exe

412 Chapter 3 Advanced DHCP and DNS
===================================

Lesson 1: Implementing an advanced DNS solution
-----------------------------------------------

1.  The contoso.com zone hosts DNS records that map FQDNs of hosts in
    the zone to their IPv6 addresses. You have configured a GlobalNames
    zone and want to allow single-label name resolution of the name WSUS
    to the appropriate IPv6 address. Which type of record should you
    create in the GlobalNames zone to accomplish this goal?

    a.  Host (AAAA)

    b.  ***Alias (CNAME)***

    c.  Mail Exchanger (MX)

    d.  Pointer (PTR)

2.  You have deployed WSUS servers to each of your organization’s branch
    offices. Each branch office is located on its own subnet. You have
    created DNS records that use the same name, wsus.contoso.com, for
    each of the WSUS servers in these different branch offices. You want
    to ensure that when a client makes a name request for the record
    wsus.contoso.com, the DNS server returns the record that corresponds
    to an IP address on the client’s local subnet. Which of the
    following DNS options do you configure to accomplish this goal?

    a.  Socket pool

    b.  Cache locking

    c.  Recursion

    d.  ***Netmask ordering***

3.  The DNS server that hosts your organization’s external address space
    is under attack from nefarious third parties who are slowing it down
    by constantly launching DNS queries against the server for hosts in
    zones not hosted on the server. The DNS server should only return
    data for zones that it hosts directly. Which of the following
    settings should you configure to stop it responding to queries for
    hostnames located in zones that it does not host?

    a.  ***Recursion***

    b.  Netmask ordering

    c.  Cache locking

    d.  Socket pool

4.  You want to ensure that a record stored in the DNS server’s cache
    cannot be overwritten until 90 percent of its TTL period has
    expired. Which of the following DNS server settings would you
    configure to accomplish this goal?

    a.  Netmask ordering

    b.  Recursion

    c.  Socket pool

    d.  ***Cache locking***

5.  You want to increase the number of ports available that can be used
    when the DNS server makes a query. Which of the following DNS server
    settings should you configure to accomplish this goal?

    a.  ***Socket pool***

    b.  Netmask ordering

    c.  Recursion

    d.  Cache locking

Lesson 2: Implementing an advanced DHCP solution
------------------------------------------------

1.  Your organization has two DHCP servers at its central site. The
    first one is hosted on a computer running the Windows Server 2012
    operating system. The second DHCP server is hosted on a computer
    running the Windows Server 2008 R2 operating system. You want to
    make a DHCP scope highly available so that clients can still obtain
    address leases if one of these DHCP servers fail. Which of the
    following strategies should you implement to accomplish this goal?

    a.  Configure DHCP failover. Use hot standby mode.

    b.  Configure DHCP failover. Use load sharing mode.

    c.  ***Configure a split scope.***

    d.  Configure a superscope.

2.  Your organization has two DHCP servers at its central site. Both
    DHCP servers are running on the Windows Server 2012 operating
    system. One DHCP server also hosts the company’s intranet site. You
    want to configure DHCP so that one DHCP server handles the majority
    of the organization’s DHCP traffic and the other DHCP server,
    installed on the server that hosts the intranet site, only leases
    addresses if the first one becomes unavailable. The second DHCP
    server should be able to lease addresses from the entire scope until
    such time as the first DHCP server is returned to service. Which of
    the following strategies should you implement to accomplish this
    goal?

    a.  Configure DHCP failover. Use load sharing mode.

    b.  Configure a split scope.

    c.  ***Configure DHCP failover. Use hot standby mode.***

    d.  Configure a superscope.

3.  You are about to add a large number of users and computers to one of
    the existing buildings at your company. Unfortunately the existing
    DHCP scope used at this building is close to exhaustion. You want to
    configure DHCP so that clients on this physical network can be
    leased addresses from either the original or an additional address
    range, but allow these ranges to be administered as a single
    combined entity. Which of the following strategies should you
    implement to accomplish this goal?

    a.  ***Configure a superscope***.

    b.  Configure a split scope.

    c.  Configure DHCP failover. Use load sharing mode.

    d.  Configure DHCP failover. Use hot standby mode.

4.  Your organization’s head office has two DHCP servers that are hosted
    on computers running the Windows Server 2012 operating system. You
    want to configure these DHCP servers so that they share scopes and
    respond to client requests in a load-balanced manner. In the event
    that one server fails, the other server should be able to lease
    addresses from the entirety of any scope that it hosts after the
    partner server has been unavailable for a preconfigured amount of
    time. Which of the following strategies should you implement to
    accomplish this goal?

    a.  Configure a split scope.

    b.  ***Configure DHCP failover. Use load sharing mode.***

    c.  Configure DHCP failover. Use hot standby mode.

    d.  Configure a superscope.

Lesson 3: Deploying and managing IPAM
-------------------------------------

1.  You need to give a user the ability to view IP address tracking
    information stored in your organization’s IPAM server without adding
    him or her to the IPAM Administrators group. To which of the
    following IPAM-related security groups could you add this user to
    grant this privilege?

    a.  IPAM Users

    b.  ***IPAM IP Audit Administrators***

    c.  IPAM MSM Administrators

    d.  IPAM ASM Administrators

2.  You need to give a user the ability to manage the IP Address Space
    on an IPAM server without adding the user to the IPAM Administrators
    group. To which of the following IPAM-related security groups could
    you add this user to grant this privilege?

    a.  IPAM MSM Administrators

    b.  IPAM Users

    c.  ***IPAM ASM Administrators***

    d.  IPAM IP Audit Administrators

3.  You want to use IPAM’s IP address tracking feature to determine
    which IP addresses a computer with a specific MAC address was
    assigned by your organization’s DHCP servers during a particular
    week. Which of the following categories should you search on to
    accomplish this goal?

    a.  IP address

    b.  ***Client ID***

    c.  Host name

    d.  User name

4.  You are in the process of configuring IPAM. You have run the
    discovery process and discovered three servers that host the DHCP
    server role. The server’s IPAM Access Status is listed in the IPAM
    Server Inventory as Blocked. Which of the following steps should you
    take so that this status changes to unblocked? (Choose two.)

    a.  ***Ensure that you have provisioned the GPOs using the
        Invoke-IpamGPOProvisioning cmdlet.***

    b.  Verify that Group Policy is applied correctly to the server
        hosting the IPAM server role.

    c.  ***Verify that Group Policy is applied correctly to the three
        servers hosing the DHCP server role.***

    d.  Restart the IPAM server.

412 Chapter 4 Active Directory Certificate Services
===================================================

Lesson 1: Installing and configuring Active Directory Certificate Services
--------------------------------------------------------------------------

1.  You want to deploy an offline CA as the apex of your organization’s
    certificate services hierarchy. You should only bring this CA online
    to sign the certificates of subordinate CAs. Which of the following
    solutions should you implement to accomplish this goal?

    a.  Enterprise root CA

    b.  Enterprise subordinate CA

    c.  ***Standalone root CA***

    d.  Standalone subordinate CA

2.  You have deployed a standalone computer running Windows Server 2012
    R2 to Windows Azure. You want to use this computer to provide
    certificates to partner organizations without having the certificate
    authority joined to your organization’s Active Directory domain.
    Which of the following CA types could you deploy in this scenario?
    (Choose all that apply.)

    a.  Enterprise root CA

    b.  Enterprise subordinate CA

    c.  ***Standalone root CA***

    d.  Standalone subordinate CA

3.  You want to minimize the amount of network traffic caused by clients
    accessing the CRL of your organization’s CWhich of the following
    role services could you install to accomplish this goal?

    a.  CA Web Enrollment

    b.  ***Online Responder***

    c.  Network Device Enrollment Service

    d.  Certificate Enrollment Policy Web Service

4.  You want to allow computers running third-party operating systems to
    be able to obtain certificates by accessing a web page and
    submitting a certificate request. Which of the following role
    services could you install to accomplish this goal?

    a.  Certificate Enrollment Policy Web Service

    b.  Network Device Enrollment Service

    c.  Online Responder

    d.  ***CA Web Enrollment***

5.  You are in the process of deploying authenticating switches in your
    organization. You need to provision these switches with
    certificates. Which of the following role services should you
    install to support this type of certificate deployment?

    a.  Online Responder

    b.  Certificate Enrollment Policy Web Service

    c.  ***Network Device Enrollment Service***

    d.  CA Web Enrollment

6.  You are in the process of configuring the permissions on a specific
    issuing CTo improve security, you want to limit which users are able
    to obtain certificates from the CWhich of the following permissions
    would you assign to accomplish this goal?

    a.  Read

    b.  Issue and Manage Certificates

    c.  Manage CA

    d.  ***Request Certificates***

7.  You want to delegate the ability to issue and revoke certificates
    from a specific certificate server to a specific group of users
    without giving them permission to modify certificate server
    settings. Which of the following permissions would you assign to
    accomplish this goal?

    a.  Manage CA

    b.  ***Issue and Manage Certificates***

    c.  Request Certificates

    d.  Read

8.  You want to delegate the ability to manage a specific certificate
    server to a certain group of users. Which of the following
    permissions would you assign to accomplish this goal?

    a.  Request Certificates

    b.  Read

    c.  Issue and Manage Certificates

    d.  ***Manage CA***

Lesson 2: Managing certificates
-------------------------------

1.  You want to allow specific users the ability to recover private
    keys, such as those used for encryption. Which certificate template
    can you use to issue keys to these users so that they can recover
    private keys from the certificate services database?

    a.  Administrator

    b.  EFS recovery agent

    c.  ***Key recovery agent***

    d.  OCSP Response Signing

2.  You want to ensure that clients will always recognize that a
    certificate has been revoked within 30 minutes of an administrator
    performing the revocation. Which of the following settings must you
    configure to accomplish this goal?

    a.  CRL publication interval

    b.  Key recovery agent

    c.  ***Delta CRL publication interval***

    d.  Certificate templates

3.  You want to configure a certificate so that users are automatically
    in the certificate. Which of the following steps do you need to take
    to accomplish this goal? (Choose all that apply.)

    a.  ***Configure the users with the Enroll and Autoenroll
        permissions on the certificate template.***

    b.  ***Configure an enterprise CA to issue the template.***

    c.  ***Configure the Certificate Services Client – Auto-Enrollment
        Group Policy item.***

    d.  Configure a standalone CA to issue the template.

4.  On Monday morning, Don rings you and tells you that he doesn’t have
    his smart card and might have lost it at the coffee shop, but he
    suspects that he might have left it at home. He’s travelling
    interstate today and won’t get home until Friday. He won’t know
    until then if it is lost or sitting on the kitchen table at home.
    Policy dictates that you should revoke his smart card certificate.
    Which of the following reasons should you specify when revoking his
    certificate to minimize the effort required if the smart card is
    found at home on Friday?

    a.  ***Certificate Hold***

    b.  CA compromise

    c.  Key compromise

    d.  Change of Affiliation

5.  You have located Trojan software that allows remote access to a
    standalone certificate server located on your organization’s
    perimeter network. The CA certificate for the perimeter network CA
    was issued from your organization’s enterprise root CYou are in the
    process of revoking the CA certificate of the perimeter network
    CWhich of the following reasons should you use when revoking this
    certificate?

    a.  Certificate Hold

    b.  Change of Affiliation

    c.  CA compromise

    d.  ***Key compromise***

6.  You have just modified an existing template so that it supports key
    recovery. The CA already supports key recovery. A large number of
    users are enrolled in certificates issued based on the template
    prior to you making this modification. How can you ensure that it
    will be possible to recover the private keys of these users?

    a.  ***Use the Certificate Templates console to reenroll all
        certificate holders***

    b.  Delete the certificate template

    c.  Create a new certificate template and configure supersedence

    d.  Change the certificate template name

    e.  Chapter Backup and recovery

Lesson 1: Configuring and managing backups
------------------------------------------

1.  Which of the following utilities can you use to create a System
    State backup on a computer running the Windows Server 2012 R2
    operating system? (Choose all that apply.)

    a.  Windows Azure Backup

    b.  ***Windows Server Backup***

    c.  Vssadmin.exe

    d.  ***Wbadmin.exe***

2.  You want to delete two volume shadow copy snapshots that reside on a
    server that you are responsible for managing. Which of the following
    tools could you use to accomplish this goal?

    a.  Wbadmin.exe

    b.  ***Vssadmin.exe***

    c.  Windows Server Backup

    d.  Windows Azure Backup

3.  You need to configure two standalone non-domain-joined computers
    running the Server Core version of Windows Server 2012 R2 so that
    they are able to perform regular full server backups to a special
    internal hard disk drive. Which of the following tools could you use
    to accomplish this goal?

    a.  Vssadmin.exe

    b.  ***Wbadmin.exe***

    c.  Windows Azure Backup

    d.  Windows Server Backup

4.  You need to perform regular scheduled backups to an off-site
    location as a way of ensuring business continuity in the event that
    all servers in a particular site are lost in a natural or other type
    of disaster. Which of the following tools could you use to
    accomplish this goal?

    a.  Windows Server Backup

    b.  Wbadmin.exe

    c.  ***Windows Azure Backup***

    d.  Vssadmin.exe

Lesson 2: Recovering servers
----------------------------

1.  Which of the following tools could you use to perform a bare metal
    recovery?

    a.  Windows Azure Backup

    b.  ***Windows RE***

    c.  Windows Server Backup

    d.  Wbadmin.exe

2.  You are experiencing problems with a computer running Windows Server
    2012 RYou want to boot up the computer, but only load the minimum
    necessary drivers and start the minimum necessary services. Which of
    the following strategies should you pursue?

    a.  Boot into Last Known Good Configuration.

    b.  ***Boot into safe mode.***

    c.  Boot into Windows RE.

    d.  Perform bare metal recovery.

3.  Which of the following can you back up and restore from Windows
    Azure Backup?

    a.  System State

    b.  Full server backup

    c.  ***Files and folders***

    d.  Bare metal recovery

4.  Which of the following steps must you take after restoring the
    System State data on a computer running Windows Server 2012 R2?

    a.  Restart the Volume Shadow Copy service.

    b.  ***Restart the server***.

    c.  Restart the Workstation service.

    d.  Restart the Server service.

412 Chapter 6 Advanced file services and storage
================================================

Lesson 1: Configuring advanced file services
--------------------------------------------

1.  You want to provide access to shared files for a collection of
    computers that run the Linux operating system. Which of the
    following features or roles would you deploy to accomplish this
    goal?

    a.  ***Server for NFS***

    b.  iSNS Server

    c.  BranchCache for Network Files

    d.  iSCSI Target Server

2.  You want to allow clients in a remote branch office to cache content
    from a file server in the local office. The file server is running
    the Windows Server 2012 R2 operating system and the appropriate
    Group Policy settings have been applied. Which role must you install
    on the file server in the local file server to accomplish this goal?

    a.  iSNS Server

    b.  iSCSI Target Server

    c.  ***BranchCache for Network Files***

    d.  Server for NFS

3.  Your organization is working on a secret project named Jupiter. You
    want to have all Microsoft Word files that contain the word Jupiter
    that are stored on a sensitive file share marked automatically by
    File Server Resource Manager. Which of the following technologies
    should you configure to accomplish this goal?

    a.  File screen

    b.  File access auditing

    c.  Quota

    d.  ***File classification***

4.  You want to block users in your organization from storing audio and
    video files to a specific file share. Which of the following
    technologies should you configure to accomplish this goal?

    a.  File classification

    b.  ***File screen***

    c.  File access auditing

    d.  Quota

5.  You want to track which users are accessing files located on a
    sensitive share. Which of the following technologies should you
    configure to accomplish this goal?

    a.  Quota

    b.  File screen

    c.  ***File access auditing***

    d.  File classification

Lesson 2: Configuring and optimizing storage
--------------------------------------------

1.  You want to deploy a server that stores centralized information
    about the iSCSI initiators and iSCSI targets in your organization.
    Which of the following roles or features would you install to
    accomplish this goal?

    a.  iSCSI target server

    b.  BranchCache for Network Files

    c.  ***iSNS server***

    d.  Server for NFS

2.  You want to configure a computer running the Windows Server 2012 R2
    operating system so that it can host virtual hard disks that can be
    accessed by other servers through the iSCSI protocol. Which of the
    following roles or features would you install to accomplish this
    goal?

    a.  Server for NFS

    b.  iSNS server

    c.  BranchCache for Network Files

    d.  ***iSCSI target server***

3.  Which of the following Windows PowerShell commands could you use to
    remove the payload data for all roles and features not currently
    installed on a computer running Windows Server 2012 R2?

    a.  Get-WindowsFeature | Where-Object {\$\_.Installed –eq \$True} |
        Install-WindowsFeature

    b.  Get-WindowsFeature | Where-Object {\$\_.Installed –eq \$False} |
        Install-WindowsFeature

    c.  ***Get-WindowsFeature | Where-Object {\$\_.Installed –eq
        \$False} | Uninstall-WindowsFeature -Remove***

    d.  Get-WindowsFeature | Where-Object {\$\_.Installed –eq \$True} |
        Uninstall-WindowsFeature –Remove

4.  You want to provide server SYD-B with storage through the iSCSI
    protocol. This storage will be hosted on SYD-Which of the following
    should you configure to accomplish this goal? (Choose two. Each
    answer forms part of a complete solution.)

    a.  ***Install the iSCSI target server on SYD-A.***

    b.  Install the iSCSI target server on SYD-B.

    c.  Configure the iSCSI initiator on SYD-A.

    d.  ***Configure the iSCSI initiator on SYD-B.***

412 Chapter 7 High availability
===============================

Lesson 1: Configuring and managing failover clustering
------------------------------------------------------

1.  In which of the following scenarios would you use a witness disk
    with a failover cluster? (Choose all that apply.)

    a.  The cluster has three nodes.

    b.  ***The cluster has four nodes.***

    c.  The cluster has five nodes.

    d.  ***The cluster has six nodes***.

2.  With which of the following cluster configurations would you use a
    node majority quorum model? (Choose all that apply.)

    a.  Two-node cluster with witness disk.

    b.  ***Three-node cluster.***

    c.  Four-node cluster with witness disk.

    d.  ***Five-node cluster.***

3.  You have a two-node Windows Server 2012 R2 cluster. The cluster must
    remain operational if only the witness fails. Which of the following
    quorum modes could you use with this cluster? (Choose all that
    apply.)

    a.  Node majority

    b.  ***Node and disk majority***

    c.  ***Node and file share majority***

    d.  No majority: disk only

4.  You want to ensure that a highly available file server returns to
    node MEL-FS1 in the event that failover occurs and then MEL-FS1
    returns to normal operation. What steps would you take to accomplish
    this goal? (Choose two, each answer forms part of a complete
    solution.)

    a.  ***Configure MEL-FS1 as the preferred owner***

    b.  ***Allow failback***

    c.  Configure quorum mode

    d.  Configure Cluster-Aware Updating

5.  Which of the following technologies can you use to manage the
    process of applying software updates to a four-node failover cluster
    so that nodes are placed into maintenance mode automatically,
    updated, and returned to service without disrupting client access to
    applications hosted on those nodes?

    a.  Network Load Balancing

    b.  ***Cluster-Aware Updating***

    c.  Windows Server Update Services

    d.  Windows Intune

Lesson 2: Understanding Network Load Balancing
----------------------------------------------

1.  You need to apply a critical software update to each node in a
    six-node NLB cluster that hosts a web application. The critical
    software update requires each node in the NLB cluster to be
    restarted. You want to deal with each node in sequence, stopping new
    sessions from being established and to allow existing sessions to
    complete before applying the update and restarting each node. Which
    of the following commands should you apply to each node?

    a.  Stop

    b.  ***Drainstop***

    c.  Suspend

    d.  Start

2.  You are configuring a port rule for a Windows Network Load Balancing
    Cluster. You want to ensure that after a client starts a session
    with a host, all subsequent traffic in that session is directed to
    that host. Which of the following filtering modes and affinities
    should you configure to accomplish this goal?

    a.  Single host, no affinity

    b.  Multiple host, no affinity

    c.  ***Multiple host, single affinity***

    d.  Disable port range

3.  You are configuring a port rule for a Windows NLB cluster. You want
    to ensure that traffic on a specific port is automatically dropped.
    Which of the following filtering and affinity options should you
    configure to accomplish this goal?

    a.  ***Disable port range***

    b.  Multiple host, single affinity

    c.  Multiple host, no affinity

    d.  Single host, no affinity

4.  You want to ensure that all TCP traffic on port 25 goes to one host
    in an eight-node NLB cluster. TCP traffic on port 80 should be
    shared by all hosts. Which of the following filtering and affinity
    options should you configure for the rule that deals with TCP
    traffic on port 25?

    a.  Multiple host, no affinity

    b.  Multiple host, single affinity

    c.  Disable port range

    d.  ***Single host, no affinity***

5.  You are configuring NLB clusters that will be hosted as virtual
    machines on a Hyper-V server. The NLB cluster and the cluster hosts
    will be managed from computers running Windows 8 on a separate
    TCP/IP subnet. For which of the following configurations must you
    select a multicast mode for the cluster operations mode? (Choose all
    that apply.)

    a.  ***Five-node NLB cluster One network adapter per node.***

    b.  ***Four-node NLB cluster Two network adapters per node. Network
        adapters are teamed.***

    c.  Five-node NLB cluster Two network adapters per node. Network
        adapters not teamed.

    d.  ***Four-node NLB cluster One network adapter per node.***

412 Chapter 8 Virtual machine and site resilience
=================================================

Lesson 1: Virtual machine movement
----------------------------------

1.  You have three running virtual machines that are hosted on your
    Windows Server 2012 R2 Hyper-V server’s C: volume. You want to move
    these three running virtual machines to another storage location
    without shutting them down. Assuming enough space is available,
    which of the following volumes could you use as a destination when
    performing storage migration? (Choose all that apply.)

    a.  File share hosted on a computer running Windows Server 2008 R2

    b.  ***iSCSI connected virtual disk***

    c.  ***SSD disk connected through USB 3.0***

    d.  ***File Share hosted on a computer running Windows Server 2012
        R2***

2.  You have an existing virtual machine named SYD-DB-VM that is hosted
    through Hyper-V on a computer running the Windows Server 2012 R2
    operating system named SYD-HV-You want to create a duplicate
    SYD-DB-VM named SYD-DB-VM-A and also have it hosted on SYD-HV-Which
    of the following steps should you take to accomplish this goal?
    (Choose two, each answer forms part of a complete solution.)

    a.  ***Export SYD-DB-VM***

    b.  Import SYD-DB-VM with the Register The Virtual Machine In-Place
        option

    c.  Import SYD-DB-VM with the Restore The Virtual Machine option

    d.  ***Import SYD-DB-VM with the Copy The Virtual Machine option***

3.  You are going to use Kerberos as an authentication protocol for live
    migration. You are configuring delegation for the computer accounts
    of the Hyper-V hosts that will host the virtual machines that will
    participate in the live migration process. Which of the following
    services must you configure delegation for if you want to support
    moving virtual machine storage and the virtual machines? (Choose all
    that apply.)

    a.  Dcom

    b.  ***cifs***

    c.  Hyper-V Replica Service

    d.  ***Microsoft Virtual System Migration Service***

4.  You are configuring a four-node Hyper-V failover cluster. You want
    to be able to move running Hyper-V virtual machines between any of
    the nodes as necessary. Which of the following storage devices
    should you select when configuring the virtual machines that will be
    hosted on this cluster? (Choose all that apply.)

    a.  ***Cluster Shared Volume***

    b.  SMB 2.0 File Share

    c.  ***SMB 3.0 File Share***

    d.  Distributed File System Share

Lesson 2: Site-level fault tolerance
------------------------------------

1.  You want to perform a planned failover of a virtual machine that is
    configured to replicate to another Hyper-V server through Hyper-V
    Replica. Which of the following steps should you take prior to
    performing the failover?

    a.  Take a checkpoint of the virtual machine.

    b.  Pause the virtual machine.

    c.  ***Shut down the virtual machine.***

    d.  Export the virtual machine.

2.  You are planning the deployment of a cluster that should keep
    functioning in the event that a site is lost. Your organization has
    three sites. Each site has a connection to the other two sites. The
    cluster will have six nodes. Which of the following strategies
    should you implement to ensure that the cluster will remain
    operational in the event that an entire site becomes unavailable?
    (Choose two. Each answer forms part of a complete solution.)

    a.  Place two nodes in the first site. Place three nodes in the
        second site.

    b.  ***Place a file share witness in the third site.***

    c.  ***Place three nodes in the first site. Place three nodes in the
        second site***.

    d.  Place one node in the third site.

3.  Which of the following predefined firewall rules would you enable if
    you were configuring Hyper-V Replica and using Kerberos
    authentication?

    a.  Failover Cluster Manager

    b.  Hyper-V Management Clients

    c.  ***Hyper-V Replica HTTP***

    d.  Hyper-V Replica HTTPS

4.  Which of the following predefined firewall rules would you enable if
    you were configuring Hyper-V Replica and using certificate-based
    authentication?

    a.  ***Hyper-V Replica HTTPS***

    b.  Hyper-V Management Clients

    c.  Failover Cluster Manager

    d.  Hyper-V Replica HTTP

412 Chapter 9 DAC and AD RMS
============================

Lesson 1: Implementing Dynamic Access Control (DAC)
---------------------------------------------------

1.  You want to ensure that you are able to configure access to specific
    files for users that are full-time employees. Which of the following
    should you configure to extract this information from the user
    account’s Active Directory attribute?

    a.  ***Configure a user or device claim.***

    b.  Configure a central access policy.

    c.  Configure resource properties.

    d.  Create a central access rule.

2.  You want to apply a set of permissions to the Hovercraft\_Project
    group based on user attributes and the properties of the file. Which
    of the following would you configure to accomplish this goal?

    a.  Configure a central access policy.

    b.  Configure resource properties.

    c.  ***Create a central access rule.***

    d.  Configure a user or device claim.

3.  You want to create access rules based on the Confidentiality
    property of a file. Which of the following do you need to enable so
    that you can use file confidentiality information in a rule?

    a.  ***Configure resource properties.***

    b.  Create a central access rule.

    c.  Configure a user or device claim.

    d.  Configure a central access policy.

4.  You want to publish a collection of central access rules to all of
    the file servers in your domain. Which of the following should you
    configure to accomplish this goal?

    a.  Create a central access rule.

    b.  Configure a user or device claim.

    c.  ***Configure a central access policy.***

    d.  Configure resource properties.

Lesson 2: Installing and configuring Active Directory Rights Management Services (AD RMS)
-----------------------------------------------------------------------------------------

1.  You want a co-worker to be able to recover data from AD
    RMS–protected documents where the AD RMS template settings have
    caused that content to expire. To which of the following groups
    should you add your co-worker’s account?

    a.  ***Super Users***

    b.  AD RMS Enterprise Administrators

    c.  AD RMS Template Administrators

    d.  AD RMS Auditors

2.  You want to allow the AD RMS cluster in the Adatum forest to be able
    to manage requests for CLCs for users that have been issued RACs
    from the AD RMS cluster in the Contoso forest. Which of the
    following should you configure to accomplish this goal?

    a.  ***Trusted user domain***

    b.  Trusted publishing domain

    c.  File Server Resource Manager file management task

    d.  File Server Resource Manager classification rule

3.  You want to automatically apply an AD RMS template named
    Submarine\_Protection to all documents on a file share that contain
    the word “Submarine.” Which of the following should you configure to
    accomplish this goal?

    a.  File Server Resource Manager classification rule

    b.  ***File Server Resource Manager file management task***

    c.  Trusted publishing domain

    d.  Trusted user domain

4.  You want to allow the AD RMS cluster in the Adatum forest to issue
    license terms to content published with licenses issued by an AD RMS
    cluster in the Contoso forest. Which of the following should you
    configure to accomplish this goal?

    a.  File Server Resource Manager file management task

    b.  ***Trusted publishing domain***

    c.  File Server Resource Manager classification rule

    d.  Trusted user domain

412 Chapter 10 Active Directory Federation Services
===================================================

Lesson 1: Implementing Active Directory Federation Services
-----------------------------------------------------------

1.  The Contoso forest hosts a web application that users in Adatum
    forest want to access. You are one of the systems administrators at
    Adatum and you are in the process of configuring a federated trust
    to allow this to occur. A single AD FS server is deployed in each
    forest. Which of the following statements about this deployment
    would be true if a solution providing this access through AD FS was
    implemented? (Choose two.)

    a.  The AD FS server in the Contoso forest will function as the
        claims provider.

    b.  ***The AD FS server in the Contoso forest will function as the
        relying party server.***

    c.  ***You need to configure a relying party trust on the AD FS
        server on the AD FS server in the Adatum forest.***

    d.  You need to configure a claims provider trust on the AD FS
        server in the Adatum forest.

2.  The Contoso forest hosts a web application that users in Adatum
    forest want to access. You are one of the systems administrators at
    Contoso and you are in the process of configuring a federated trust
    to allow this to occur. A single AD FS server is deployed in each
    forest. Which of the following statements about this deployment
    would be true if a solution providing this access through AD FS was
    implemented? (Choose two.)

    a.  ***The AD FS server in the Adatum forest will function as the
        claims provider.***

    b.  The AD FS server in the Adatum forest will function as the
        relying party server.

    c.  You will configure a relying party trust on the Contoso AD FS
        server.

    d.  ***You will configure a claims provider trust on the Contoso AD
        FS server.***

3.  You are in the process of configuring certificate trusts. You want
    to ensure that the current and future certificates issued to the
    Contoso AD FS server by the Contoso CA are trusted by the Adatum AD
    FS server. You do this by configuring the appropriate certificate to
    the Computer Configuration\\Policies\\Windows Settings\\Security
    Settings\\Public Key Policies\\Trusted Root Certification
    Authorities node of the Default Domain Policy in the Adatum domain.
    Both Adatum and Contoso have a single enterprise root CA. Which of
    these certificates should you add to this GPO?

    a.  ***The CA certificate of the Contoso CA***

    b.  The CA certificate of the Adatum CA

    c.  The SSL certificate assigned to the Contoso AD FS server

    d.  The SSL certificate assigned to the Adatum AD FS server

<!-- -->

1.  410 Exam Reference Ch 1
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  Which of the following processor architectures can be used
            for a clean Windows Server 2012 R2 installation? (Choose all
            that apply.)

            a.  32-bit processor only

            b.  ***64-bit processor only***

            c.  32-bit or 64-bit processor

            d.  64-bit or Itanium processor

        2.  Which of the following paths is a valid upgrade path to
            Windows Server 2012 R2?

            a.  Windows Server 2003 Standard to Windows Server 2012 R2
                Standard

            b.  ***Windows Server 2008 Standard to Windows Server 2012
                R2 Standard***

            c.  Windows Server 2008 32-bit to Windows Server 2012 R2
                64-bit

            d.  Windows 7 Ultimate to Windows Server 2012 R2 Essentials

        3.  Which of the following features must be added to a Windows
            Server 2012 R2 Server Core installation to convert it to the
            Minimal Server Interface?

            a.  ***Graphical Management Tools and Infrastructure***

            b.  Server Graphical Shell

            c.  Windows PowerShell

            d.  Microsoft Management Console

        4.  Which of the following terms is the name of the directory
            where Windows stores all the operating system modules it
            might need to install at a later time?

            a.  Windows

            b.  System32

            c.  bin

            d.  ***WinSxS***

        5.  Which of the following statements are valid reasons as to
            why administrators might want to install their Windows
            Server 2012 R2 servers by using the Server Core option?
            (Choose all that apply.)

            a.  ***A Server Core installation can be converted to the
                full GUI without reinstalling the operating system.***

            b.  The Windows PowerShell 4.0 interface in Windows Server
                2012 R2 includes more than 10 times as many cmdlets as
                Windows PowerShell 2.0.

            c.  ***The new Server Manager in Windows Server 2012 R2
                makes it much easier to administer servers remotely.***

            d.  A Windows Server 2012 R2 Server Core license costs
                significantly less than a full GUI license

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which features must be removed from a full GUI installation
            of Windows Server 2012 R2 in order to convert it to a Server
            Core installation? (Choose all that apply.)

            a.  Windows Management Instrumentation (WMI)

            b.  ***Graphical Management Tools and Infrastructure***

            c.  Desktop Experience

            d.  ***Server Graphical Shell***

        2.  Which of the following NIC teaming modes provides fault
            tolerance and bandwidth aggregation?

            a.  Hyper-V live migration

            b.  ***Switch Independent Mode***

            c.  Switch Dependent Mode

            d.  Link Aggregation Control Protocol

        3.  Which of the following command-line tools are used to join a
            computer to a domain?

            a.  Net.exe

            b.  Netsh.exe

            c.  ***Netdom.exe***

            d.  Ipconfig.exe

        4.  Which of the following statements about Server Manager
            is *not* true?

            a.  ***Server Manager can deploy roles to multiple servers
                at the same time.***

            b.  Server Manager can deploy roles to VHDs while they are
                offline.

            c.  Server Manager can install roles and features at the
                same time.

            d.  Server Manager can install roles and features to any
                Windows Server 2012 R2 server on the network.

        5.  Which of the following operations can you *not* perform on a
            service by using Server Manager? (Choose all that apply.)

            a.  Stop a running service

            b.  Start a stopped service

            c.  ***Disable a service***

            d.  ***Configure a service to start when the computer
                starts***

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  Which of the following statements are true of striped
            volumes? (Choose all that apply.)

            a.  ***Striped volumes provide enhanced performance over
                simple volumes.***

            b.  Striped volumes provide greater fault tolerance than
                simple volumes.

            c.  You can extend striped volumes after creation.

            d.  ***If a single physical disk in the striped volume
                fails, all the data in the entire volume is lost.***

        2.  Which of the following statements best describes the
            requirements for extending a volume on a dynamic disk?
            (Choose all that apply.)

            a.  ***If you want to extend a simple volume, you can use
                only the available space on the same disk if the volume
                is to remain simple.***

            b.  The volume must have a file system (a raw volume) before
                you can extend a simple or spanned volume.

            c.  You can extend a simple or spanned volume if you
                formatted it by using the FAT or FAT32 file systems.

            d.  ***You can extend a simple volume across additional
                disks if it is not a system volume or a boot volume.***

        3.  Which of the following volume types supported by Windows
            Server 2012 R2 provide fault tolerance? (Choose all that
            apply.)

            a.  Striped

            b.  Spanned

            c.  ***Mirrored***

            d.  ***RAID-5***

        4.  A JBOD drive array is an alternative to which of the
            following storage technologies?

            a.  SAN

            b.  SCSI

            c.  ***RAID***

            d.  iSCSI

2.  410 Exam Reference Ch 2
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  What is the maximum number of shadow copies a Windows Server
            2012 R2 system can maintain for each volume?

            a.  8

            b.  16

            c.  ***64***

            d.  128

        2.  Which of the following terms describes the process of
            granting users access to file server shares by reading their
            permissions?

            a.  Authentication

            b.  ***Authorization***

            c.  Enumeration

            d.  Assignment

        3.  Which of the following are tasks you can perform by using
            the quotas in File Server Resource Manager but can’t perform
            by using NTFS quotas? (Choose all that apply.)

            a.  ***Send an email message to an administrator when users
                exceed their limits.***

            b.  Specify different storage limits for each user.

            c.  Prevent users from consuming storage space on a volume
                beyond their allotted limit.

            d.  Generate warnings to users when they approach their
                allotted storage limit.

        4.  In the Windows Server 2012 R2 NTFS permission system,
            combinations of advanced permissions are also known as
            \_\_\_\_\_\_\_\_\_\_\_\_\_ permissions. (Choose all that
            apply.)

            a.  Special

            b.  ***Basic***

            c.  Share

            d.  ***Standard***

        5.  Which of the following statements best describes the role of
            the security principal in file system permission
            assignments?

            a.  The security principal in file system permission
                assignments is the only person who can access a file
                that has no permissions assigned to it.

            b.  The security principal in file system permission
                assignments is the person responsible for creating
                permission policies.

            c.  The security principal in file system permission
                assignments is the person assigning the permissions.

            d.  ***The security principal in file system permission
                assignments is the person to whom the permissions are
                assigned.***

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which of the following terms best describes the software
            interface through which a computer communicates with a print
            device?

            a.  ***Printer***

            b.  Print server

            c.  Printer driver

            d.  Print Management console

        2.  You are setting up a printer pool on a computer running
            Windows Server 2012 R2. The printer pool contains three
            identical print devices. You open the Properties dialog box
            for the printer and select the Enable Printer Pooling option
            on the Ports tab. Which of the following steps must you
            perform next?

            a.  Configure the LPT1 port to support three printers.

            b.  ***Select or create the ports mapped to the three
                printers.***

            c.  On the Device Settings tab, configure the installable
                options to support two additional print devices.

            d.  On the Advanced tab, configure the priority for each
                print device so that printing is distributed among the
                three print devices.

        3.  One of your print devices is not working properly, so you
            want to temporarily prevent users from sending jobs to the
            printer serving that device. Which of the following actions
            should you take?

            a.  ***Stop sharing the printer.***

            b.  Remove the printer from Active Directory.

            c.  Change the printer port.

            d.  Rename the share.

        4.  You are administering a computer running Windows Server 2012
            R2 configured as a print server. Users in the Marketing
            group report that they cannot print documents using a
            printer on the server. You view the permissions in the
            printer’s properties. The Marketing group is allowed Manage
            Documents permission. Which of the following statements best
            explains why the users cannot print to the printer?

            a.  The Everyone group must be granted the Manage Documents
                permission.

            b.  The Administrators group must be granted the Manage
                Printers permission.

            c.  ***The Marketing group must be granted the Print
                permission.***

            d.  The Marketing group must be granted the Manage Printers
                permission.

        5.  You are administering a print server running Windows Server
            2012 R2. You want to perform maintenance on a print device
            physically connected to the print server. There are several
            documents in the print queue. You want to prevent the
            documents from being printed to the printer, but you don’t
            want users to have to resubmit the documents to the printer.
            Which of the following statements best describes the best
            way to do this?

            a.  Open the printer’s Properties dialog box, select the
                Sharing tab, and select the Do Not Share This Printer
                option.

            b.  Open the printer’s Properties dialog box and select a
                port that is not associated with a print device.

            c.  Open the printer’s queue window, select the first
                document, and select Pause from the Document window.

            d.  ***Open the printer’s queue window and select the Pause
                Printing option from the Printer menu.***

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  Which of the following tasks must you perform before you can
            manage a remote server running Windows Server 2012 R2 using
            the Computer Management snap-in?

            a.  Enable WinRM on the remote server.

            b.  ***Enable the COM+ Network Access rule on the remote
                server.***

            c.  Enable the Remote Event Log Management rules on the
                remote server.

            d.  Install Remote Server Administration Tools on the remote
                server.

        2.  Which of the following Windows PowerShell cmdlets can you
            use to list the existing Windows Firewall rules on a
            computer running Windows Server 2012 R2? (Choose all that
            apply.)

            a.  ***Get-NetFirewallRule***

            b.  Set-NetFirewallRule

            c.  ***Show-NetFirewallRule***

            d.  New-NetFirewallRule

        3.  Which of the following tasks can you *not* perform remotely
            on a server running Windows Server 2008?

            a.  ***Install roles by using Server Manager***

            b.  Install roles by using Windows PowerShell

            c.  Connect to the remote server by using the Computer
                Management snap-in

            d.  Monitor event log entries

        4.  Which of the following updates must you install on a server
            running Windows Server 2008 before you can connect to it by
            using Windows Server 2012 R2 Server Manager? (Choose all
            that apply.)

            a.  .NET Framework 3.5

            b.  ***.NET Framework 4.0***

            c.  ***Windows Management Framework 3.0***

            d.  Windows Server 2008 R2

        5.  When you run Server Manager from a Windows 8 workstation
            using Remote Server Administration Tools, which of the
            following elements do *not* appear in the default display?

            a.  The Dashboard

            b.  ***The Local Server home page***

            c.  The All Servers home page

            d.  The Welcome tile

3.  410 Exam Reference Ch 3
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  Which of the following statements about Type I and Type II
            virtualization are true? (Choose all that apply.)

            a.  In Type I virtualization, the hypervisor runs on top of
                a host OS.

            b.  ***In Type I virtualization, the hypervisor runs
                directly on the computer hardware.***

            c.  ***In Type II virtualization, the hypervisor runs on top
                of a host OS.***

            d.  In Type II virtualization, the hypervisor runs directly
                on the computer hardware.

        2.  Which of the following types of server virtualization
            provides the best performance for high-traffic servers in
            production environments?

            a.  ***Type I virtualization***

            b.  Type II virtualization

            c.  Presentation virtualization

            d.  RemoteApp

        3.  Which of the following Microsoft operating systems includes
            a license that enables you to license an unlimited number of
            virtual instances?

            a.  Hyper-V Server

            b.  ***Windows Server 2012 R2 Datacenter***

            c.  Windows Server 2012 R2 Standard

            d.  Windows Server 2012 R2 Foundation

        4.  Which of the following Hyper-V features make it possible for
            a VM to function with a minimum RAM value that is lower than
            the startup RAM value? (Choose all that apply.)

            a.  ***Smart paging***

            b.  ***Dynamic Memory***

            c.  Memory Weight

            d.  ***Guest Integration Services***

        5.  When you install the Hyper-V role on a server running
            Windows Server 2012 R2, the instance of the OS on which you
            installed the role is converted to what system element?

            a.  The hypervisor

            b.  The Virtual Machine Monitor

            c.  ***The parent partition***

            d.  A child partition

        6.  Which of the following statements about Generation 1 and
            Generation 2 virtual machines are true? (Choose all that
            apply.)

            a.  You must create a Generation 1 VM before you can create
                a Generation 2 VM.

            b.  ***Generation 2 VMs deploy faster than Generation 1
                VMs.***

            c.  Generation 2 VMs only support Windows 8.1 and Windows
                Server 2012 R2 as guest operating systems.

            d.  Generation 2 VMs use the same device drivers as
                Generation 1 VMs.

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which of the following statements about VHDX files
            is *not* true?

            a.  VHDX files can be as large as 64 TB.

            b.  ***VHDX files can only be opened by computers running
                Windows Server 2012 and Windows Server 2012 R2.***

            c.  VHDX files support larger block sizes than VHD files.

            d.  VHDX files support 4-KB logical sectors.

        2.  Which of the following must be true about a pass-through
            disk?

            a.  A pass-through disk must be offline in the guest OS that
                will access it.

            b.  ***A pass-through disk must be offline in the parent
                partition of the Hyper-V server.***

            c.  A pass-through disk can only be connected to a SCSI
                controller.

            d.  A pass-through disk must be added to a VM with the Disk
                Management snap-in.

        3.  The Merge function only appears in the Edit Virtual Hard
            Disk Wizard under which of the following conditions?

            a.  When you select a VHDX file for editing

            b.  When you select two or more disks for editing

            c.  When you select a disk with free space available in it

            d.  ***When you select a differencing disk for editing***

        4.  Which of the following are valid reasons *not* to take
            checkpoints of VMs? (Choose all that apply.)

            a.  ***Checkpoints can consume a large amount of disk
                space.***

            b.  Each checkpoint requires a separate copy of the VM’s
                memory allocation.

            c.  Each checkpoint can take several hours to create.

            d.  ***The existence of checkpoints slows down VM
                performance.***

        5.  Which of the following is *not* required to add a Fibre
            Channel adapter to a Hyper-V VM?

            a.  You must create a Fibre Channel virtual SAN.

            b.  You must have a physical Fibre Channel adapter installed
                in the host computer.

            c.  You must have a Fibre Channel adapter driver that
                supports virtual networking.

            d.  ***You must have a SCSI cable connecting the Fibre
                Channel adapter to the storage devices.***

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  Which of the following are valid reasons for using an
            emulated network adapter rather than a synthetic one?
            (Choose all that apply.)

            a.  ***You want to install the guest OS by using a Windows
                Deployment Services server.***

            b.  ***There is no Guest Integration Services package
                available for the guest OS you plan to use.***

            c.  The manufacturer of your physical network adapter has
                not yet provided a synthetic network adapter driver.

            d.  The emulated network adapter provides better
                performance.

        2.  Which of the following statements is *not* true about
            synthetic network adapters?

            a.  Synthetic adapters communicate with the parent partition
                by using the VMBus.

            b.  Synthetic adapters require the Guest Integration
                Services package to be installed on the guest OS.

            c.  Synthetic adapters provide faster performance than
                emulated adapters.

            d.  ***Synthetic adapters can start the child VM by using a
                PXE network boot.***

        3.  What is the maximum number of ports supported by a Hyper-V
            virtual switch?

            a.  8

            b.  256

            c.  4,096

            d.  ***Unlimited***

        4.  Which of the following virtual switch types
            does *not* enable guest OSs to communicate with the parent
            partition?

            a.  External

            b.  Internal

            c.  ***Private***

            d.  Isolated

        5.  How many dynamically assigned MAC addresses can a Hyper-V
            server provide by default?

            a.  8

            b.  ***256***

            c.  4,096

            d.  Unlimited

4.  410 Exam Reference Ch 4
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  Which of the following is the primary method for
            transmitting IPv6 traffic over an IPv4 network?

            a.  Subnetting

            b.  ***Tunneling***

            c.  Supernetting

            d.  Contracting

        2.  Which of the following is the IPv6 equivalent to a private
            IPv4 address?

            a.  Link-local unicast address

            b.  Global unique unicast address

            c.  ***Unique local unicast address***

            d.  Anycast address

        3.  Which of the following is an automatic tunneling protocol
            used by Windows operating systems that are located behind
            NAT routers?

            a.  ***Teredo***

            b.  6to4

            c.  ISATAP

            d.  APIPA

        4.  Which type of IP address must a system have to be visible
            from the Internet?

            a.  ***Registered***

            b.  Binary

            c.  Class B

            d.  Subnetted

        5.  Which of the following subnet mask values would you use when
            configuring a TCP/IP client with an IPv4 address on the
            172.16.32.0/19 network?

            a.  255.224.0.0

            b.  255.240.0.0

            c.  ***255.255.224.0***

            d.  255.255.240.0

            e.  255.255.255.240

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which of the following terms best describes the component
            that enables DHCP clients to communicate with DHCP servers
            on other subnets?

            a.  Forwarder

            b.  Resolver

            c.  Scope

            d.  ***Relay agent***

        2.  Which of the following message types is *not* used during a
            successful DHCP address assignment?

            a.  DHCPDISCOVER

            b.  ***DHCPREQUEST***

            c.  DHCPACK

            d.  DHCPINFORM

        3.  Which of the following DHCP address allocation types is the
            equivalent of a reservation in Windows Server 2012 R2?

            a.  Dynamic allocation

            b.  Automatic allocation

            c.  ***Manual allocation***

            d.  Hybrid allocation

        4.  Which of the following network components are typically
            capable of functioning as DHCP relay agents?

            a.  Windows 8.1 computers

            b.  ***Routers***

            c.  Switches

            d.  ***Windows Server 2012 R2 computers***

        5.  Which of the following TCP/IP parameters is typically
            deployed as a scope option in DHCP?

            a.  DNS Server

            b.  Subnet Mask

            c.  Lease Duration

            d.  ***Default Gateway***

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  Which of the following resource record types contains the
            information a DNS server needs to perform reverse name
            lookups?

            a.  A

            b.  CNAME

            c.  SOA

            d.  ***PTR***

        2.  Which of the following would be the correct FQDN for a
            resource record in a reverse lookup zone if the computer’s
            IP address is 10.75.143.88?

            a.  ***88.143.75.10.in-addr.arpa***

            b.  10.75.143.88.in-addr.arpa

            c.  in-addr.arpa.88.143.75.10

            d.  arpa.in-addr.10.75.143.88

        3.  Which of the following is *not* one of the elements of DNS?

            a.  Resolvers

            b.  ***Relay agents***

            c.  Name servers

            d.  Namespace

        4.  In which of the following DNS transactions does the querying
            system generate a recursive query?

            a.  ***A DNS client sends the server
                name [www.adatum.com](http://www.adatum.com/) to its
                designated DNS server for resolution.***

            b.  A client’s DNS server sends a request to a root domain
                server to find the authoritative server for the com
                top-level domain.

            c.  A client’s DNS server sends a request to the com
                top-level domain server to find the authoritative server
                for the adatum.com domain.

            d.  A client’s DNS server sends a request to the adatum.com
                domain server to find the IP address associated with the
                server name www.

        5.  Which of the following contains the controls used to modify
            DNS name caching?

            a.  The Forwarders tab of a server’s Properties sheet

            b.  ***The Start of Authority (SOA) tab of a zone’s
                Properties sheet***

            c.  The Root Hints tab of a server’s Properties sheet

            d.  The New Zone Wizard

5.  410 Exam Reference Ch 5
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  Which of the following cannot contain multiple Active
            Directory domains?

            a.  ***Organizational units***

            b.  Sites

            c.  Trees

            d.  Forests

        2.  What are the two basic classes of Active Directory objects?

            a.  Resource

            b.  ***Leaf***

            c.  Domain

            d.  ***Container***

        3.  Which of the following is *not* true about an object’s
            attributes?

            a.  Administrators must manually supply information for
                certain attributes.

            b.  Every container object has, as an attribute, a list of
                all the other objects it contains.

            c.  ***Leaf objects do not contain attributes.***

            d.  Active Directory automatically creates the globally
                unique identifier (GUID).

        4.  Which of the following is *not* a reason you should try to
            create as few domains as possible when designing an Active
            Directory infrastructure?

            a.  Creating additional domains increases the administrative
                burden of the installation.

            b.  Each additional domain you create increases the hardware
                costs of the Active Directory deployment.

            c.  Some applications might have problems working in a
                forest with multiple domains.

            d.  ***You must purchase a license from Microsoft for each
                domain you create.***

        5.  Which of the following does an Active Directory client use
            to locate objects in another domain?

            a.  DNS

            b.  ***Global Catalog***

            c.  DHCP

            d.  Site Link

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which of the following can be used to add, delete, or modify
            objects in Active Directory, in addition to modifying the
            schema if necessary?

            a.  DCPROMO

            b.  ***LDIFDE***

            c.  CSVDE

            d.  NSLOOKUP

        2.  When using CSVDE, what is the first line of the text file
            that uses proper attribute names?

            a.  Header row

            b.  ***Header record***

            c.  Name row

            d.  Name record

        3.  Which of the following utilities are used to perform an
            offline domain join?

            a.  net join

            b.  join

            c.  ***djoin***

            d.  dconnect

        4.  Which of the following is *not* a type of user account that
            can be configured in Windows Server 2012 R2?

            a.  Local accounts

            b.  Domain accounts

            c.  ***Network accounts***

            d.  Built-in accounts

        5.  Which of the following are the two built-in user accounts
            created automatically on a computer running Windows Server
            2012 R2?

            a.  Network

            b.  Interactive

            c.  ***Administrator***

            d.  ***Guest***

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  Which of the following groups are used to consolidate groups
            and accounts that span either multiple domains or the entire
            forest?

            a.  Global

            b.  Domain local

            c.  Built-in

            d.  ***Universal***

        2.  Which of the following is *not* a correct reason for
            creating an OU?

            a.  ***To create a permanent container that cannot be moved
                or renamed***

            b.  To duplicate the divisions in your organization

            c.  To delegate administration tasks

            d.  To assign different Group Policy settings to a specific
                group of users or computers

        3.  Which of the following group scope modifications are never
            permitted? (Choose all that apply.)

            a.  Global to universal

            b.  ***Global to domain local***

            c.  Universal to global

            d.  Domain local to universal

        4.  In a domain running at the Windows Server 2012 R2 domain
            functional level, which of the following security principals
            can be members of a global group? (Choose all that apply.)

            a.  ***Users***

            b.  ***Computers***

            c.  Universal groups

            d.  ***Global groups***

        5.  You are attempting to delete a global security group in the
            Active Directory Users And Computers console but the console
            will not let you complete the task. Which of the following
            could possibly be causes for the failure? (Choose all that
            apply.)

            a.  There are still members in the group.

            b.  ***One of the group’s members has the group set as its
                primary group.***

            c.  ***You do not have the proper permissions for the
                container in which the group is located.***

            d.  You cannot delete global groups from the Active
                Directory Users And Computers console.

6.  410 Exam Reference Ch 6
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  Which of the following types of files do Group Policy tools
            access from a Central Store by default?

            a.  ADM files

            b.  ***ADMX files***

            c.  Group Policy Objects

            d.  Security templates

        2.  Which of the following local GPOs takes precedence on a
            system with multiple local GPOs?

            a.  Local Group Policy

            b.  Administrators Group Policy

            c.  Non-Administrators Group Policy

            d.  ***User-specific Group Policy***

        3.  Which of the following techniques can be used to apply GPO
            settings to a specific group of users in an OU?

            a.  GPO linking

            b.  Administrative templates

            c.  ***Security filtering***

            d.  Starter GPOs

        4.  Which of the following statements best describes the
            function of a starter GPO?

            a.  ***A starter GPO functions as a template for the
                creation of new GPOs.***

            b.  A starter GPO is the first GPO applied by all Active
                Directory clients.

            c.  A starter GPO uses a simplified interface for elementary
                users.

            d.  A starter GPO contains all the settings found in the
                default Domain Policy GPO.

        5.  When you apply a GPO with a value of Not Configured for a
            particular setting to a system on which that same setting is
            disabled, what is the result?

            a.  ***The setting remains disabled.***

            b.  The setting is changed to Not Configured.

            c.  The setting is changed to Enabled.

            d.  The setting generates a conflict error.

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which of the following tools are used to deploy the settings
            in a security template to all the computers in an AD DS
            domain?

            a.  Active Directory Users and Computers

            b.  Security Templates snap-in

            c.  ***Group Policy Object Editor***

            d.  ***Group Policy Management console***

        2.  Which of the following are local groups to which you can add
            users with the Windows Control Panel? (Choose all that
            apply.)

            a.  ***Users***

            b.  Power Users

            c.  ***Administrators***

            d.  Non-Administrators

        3.  Which of the following tools are used to modify the settings
            in a security template?

            a.  Active Directory Users and Computers

            b.  ***Security Templates snap-in***

            c.  Group Policy Object Editor

            d.  Group Policy Management console

        4.  The built-in local groups on a server running Windows Server
            2012 R2 receive their special capabilities through which of
            the following mechanisms?

            a.  Security options

            b.  Windows Firewall rules

            c.  NTFS permissions

            d.  ***User rights***

        5.  After configuring and deploying the Audit Directory Service
            Access policy, what must you do before a computer running
            Windows Server 2012 R2 begins logging Active Directory
            access attempts?

            a.  ***You must select the Active Directory objects you want
                to audit by using the Active Directory Users and
                Computer console.***

            b.  You must wait for the audit policy settings to propagate
                to all the domain controllers on the network.

            c.  You must open the Audit Directory Service Access
                Properties sheet and select all the Active Directory
                objects you want to audit.

            d.  You must add an underscore character to the name of
                every Active Directory object you want to audit.

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  Which of the following is *not* one of the software
            restriction rule types supported by Windows Server 2012 R2?

            a.  Hash rules

            b.  Certificate rules

            c.  Path rules

            d.  ***Firewall rules***

        2.  Which of the following strategies for enforcing software
            restrictions will prevent any executable from running except
            for those that have been specifically allowed by an
            administrator?

            a.  Basic user

            b.  ***Disallowed***

            c.  Power user

            d.  Unrestricted

        3.  Under which of the following conditions will a hash rule in
            a software restriction policy cease to function? (Choose all
            that apply.)

            a.  When you move the file on which the hash is based to a
                different folder

            b.  ***When you update the file on which the hash is based
                to a new version***

            c.  ***When the file on which the hash is based is modified
                by a virus***

            d.  When you change the permissions for the file on which
                the hash is based

        4.  Which of the following rule types applies to files with an
            .msi extension?

            a.  Executable rules

            b.  ***Windows Installer rules***

            c.  Script rules

            d.  Packaged app rules

        5.  Which of the following services must you manually start
            before Windows can apply AppLocker policies?

            a.  ***Application Identity***

            b.  Application Management

            c.  Credential Manager

            d.  Network Connectivity Assistant

    4.  Lesson 4 Objective Overview
        ---------------------------

        1.  Which of the following mechanisms is used most often in
            firewall rules to allow traffic onto the network?

            a.  Hardware addresses

            b.  IP addresses

            c.  Protocol numbers

            d.  ***Port numbers***

        2.  Connection security rules require that network traffic
            allowed through the firewall use which of the following
            security mechanisms?

            a.  EFS

            b.  ***IPsec***

            c.  UAC

            d.  Kerberos

        3.  Which of the following actions *cannot* be performed from
            the Windows Firewall control panel?

            a.  Allowing an application through the firewall in all
                three profiles

            b.  Blocking all incoming connections for any of the three
                profiles

            c.  ***Creating firewall exceptions based on port numbers
                for all three profiles***

            d.  Turning Windows Firewall off for all three profiles

        4.  Which of the following tools *cannot* enable and disable the
            Network Discovery firewall rules?

            a.  File Explorer

            b.  B. Network and Sharing Center

            c.  ***Action Center***

            d.  Allowed Apps dialog box

        5.  Which of the following statements about Windows Firewall are
            true? (Choose all that apply.)

            a.  Applying firewall rules by using Group Policy overwrites
                all the firewall rules on the target computer.

            b.  ***Applying firewall rules by using Group Policy
                combines the newly deployed rules with the ones already
                there.***

            c.  ***Importing firewall rules saved from another computer
                overwrites all the rules on the target system.***

            d.  Importing firewall rules saved from another computer
                combines both sets of settings.

7.  411 Exam Reference Ch 1
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  Which of the following are required to install the Windows
            Deployment Services role on Windows Server 2012 R2? (Choose
            all that apply.)

            a.  ***An active DHCP server***

            b.  ***A working and reachable DNS server***

            c.  A local volume with a Resilient File System (ReFS)

            d.  An AD DS server

        2.  Which types of images are required to create a custom image
            from a template computer? (Choose all that apply.)

            a.  Boot images

            b.  Install images

            c.  ***Capture images***

            d.  Discover images

        3.  Which Windows PowerShell cmdlet is used to update an offline
            boot file with a new driver?

            a.  Import-WdsBootImage

            b.  Import-WdsDriverPackage

            c.  Set-WdsBootImage

            d.  ***Add-WdsDriverPackage***

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  What is the Windows PowerShell command to install the
            Windows Server Update Services role and supporting features
            for use with the WID database?

            a.  Install-WindowsFeature -Name UpdateServices
                -IncludeAllSubFeatures

            b.  Install-WindowsFeature -Name UpdateServices
                -IncludeAllSubFeatures -IncludeManagementTools

            c.  ***Install-WindowsFeature -Name UpdateServices
                -IncludeManagementTools***

            d.  Install-WindowsFeature -Name
                UpdateServices,UpdateServices -DB
                -IncludeManagementTools

        2.  What are the required GPOs to assign computers to WSUS
            groups? (Choose all that apply.)

            a.  ***Configure Automatic Updates***

            b.  Specify intranet Microsoft update service location

            c.  Turn on recommended updates via Automatic Updates

            d.  ***Enable client-side targeting***

        3.  What are the required post installation commands to
            configure WSUS to connect to a SQL Server database? (Choose
            all that apply.)

            a.  wsusutil postinstall content\_dir=D:\\WSUS

            b.  ***wsusutil postinstall SQL\_INSTANCE\_NAME=localhost
                content\_dir=D:\\WSUS***

            c.  ***Set-WsusServerSynchronization -SyncFromMU***

            d.  Invoke-WsusServerCleanup

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  How can you monitor real-time performance on a remote
            computer?

            a.  Run Resource Monitor from the Administrative Tools
                folder.

            b.  Run the command perfmon /res from an elevated prompt.

            c.  Run Performance Monitor and connect to the remote
                computer. Then right-click Monitoring Tools and select
                Resource Monitor from the Action menu.

            d.  ***Open a remote desktop session on the remote computer
                and then run Resource Monitor from the Administrative
                Tools folder.***

            e.  Create a PSSession to the remote computer with
                New-PSSession; then enter the session with
                Enter-PSSession. Run the command perfmon /res in the
                remote PSSession.

        2.  What Windows PowerShell commands can you use to measure the
            Hyper-V VHD resource usage of the VM trey-wms-11? (Choose
            all that apply.)

            a.  Enable-VMResourceMonitoring -VmName trey-wms-11

            b.  ***Enable-VMResourceMetering -VmName trey-wms-11***

            c.  Measure-VM -VMName \*

            d.  (Measure-VM -VMName trey-wms-11).HardDiskMetrics

            e.  Measure-VM -ComputerName trey-wms-11 -VHD

            f.  ***(Measure-VM -VmName trey-wms-11).Totaldisk***

8.  411 Exam Reference Ch 2
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  What commands do you need to run to enable DFS-N and DFS-R
            on the local server?

            a.  Add-WindowsPackage -online -PackagePath DFS

            b.  Enable-WindowsOptionalFeature -online -PackageName
                DFS-N,DFS-R

            c.  ***Install-WindowsFeature -Name FS-DFS-N,FS-DFS-R
                -IncludeManagementTools***

            d.  Add-WindowsFeature -Name DFS -IncludeAllSubFeatures

        2.  You need to enable remote management of DFS from your
            Windows 8 workstation. What commands do you need to run?
            (Include only the minimum that apply.)

            a.  ***Install-WindowsFeature -name RSAT-DFS-Mgmt-Con***

            b.  Enable-WindowsOptionalFeature -FeatureName \*DFS\*
                -online

            c.  Winrm QuickConfig

            d.  ***Enable-PSRemoting***

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  The company provides a public transfer share to allow users
            to easily share files. Without using excess privilege, you
            have to ensure that all files are deleted after they have
            been on the server for 3 days. What PowerShell command
            should you run as part of the file management task?

            a.  get-childitem -recurse  | where-object
                {\$\_.CreationTime -ge (get-date).Add(-3)} | remove-item

            b.  get-childitem -recurse  | where-object
                {\$\_.CreationTime -le (get-date).Add(-3)} | remove-item

            c.  get-childitem -recurse  | where-object
                {\$\_.CreationTime -ge (get-date).AddDays(-3)} |
                remove-item

            d.  ***get-childitem -recurse  | where-object
                {\$\_.CreationTime -le (get-date).AddDays(-3)} |
                remove-item***

        2.  In the scenario of question 1, what command security should
            the script run as?

            a.  ***Local Service***

            b.  Domain Users

            c.  Local System

            d.  Protected Users

        3.  You need to allow users to store files for sharing with
            other users. These files are stored on the D:\\UserShare
            folder of SRV2, which is shared as \\\\srv2\\share. Each
            user’s use of the space is limited to 250 MB. When users
            reach 200 MB, they should be warned via email and the
            Administrator account should also be notified by email. How
            can you implement this?

            a.  Create an FSRM quota on the D:\\UserShare folder of SRV2
                based on the Monitor 500 MB Share template, but change
                the Limit to 250 MB.

            b.  ***Create an FSRM quota on the D:\\UserShare folder of
                SRV2 based on the 200 MB Limit With 50 MB Extension
                template.***

            c.  Create an FSRM quota on the \\\\srv2\\UserShare share
                based on the Monitor 500 MB Share template, but change
                the Limit to 250 MB.

            d.  Create an FSRM quota on the \\\\srv2\\UserShare share
                based on the 200 MB Limit Reports To User template, but
                change the limit to 250 MB.

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  To which GPOs do you need to link to ensure that all
            BitLocker passwords can be backed up to Active Directory?

            a.  Default Domain Policy

            b.  Default Domain Controller Policy

            c.  ***Both the A and B***

            d.  A new BitLocker GPO linked to the Domain Users folder

        2.  What features are required and installed for the BitLocker
            Drive Encryption feature? (Choose all that apply.)

            a.  ***BitLocker Drive Encryption***

            b.  ***Remote Server Administration Tools - BitLocker Drive
                Encryption Administration Utilities***

            c.  ***Remote Server Administration Tools - AD DS Tools***

            d.  File Server VSS Agent Service

            e.  ***Enhanced Storage***

            f.  BitLocker Network Unlock

        3.  Company policy requires that all servers be encrypted with
            BitLocker on all fixed internal drives and volumes. Several
            existing servers do not support a TPM. You created a special
            OU for these servers and linked a GPO to the OU. What policy
            do you need to configure to enable BitLocker encryption for
            the servers?

            a.  Choose Drive Encryption Method And Cipher Strength

            b.  Choose How BitLocker-Protected Fixed Drives Can Be
                Recovered

            c.  ***Require Additional Authentication At Startup***

            d.  Use Enhanced Boot Configuration Data Validation Profile

            e.  Allow Network Unlock At Startup

    4.  Lesson 4 Objective Overview
        ---------------------------

        1.  You monitor changes to distribution groups and you don’t
            want to get events from other account management events
            because it would tend to hide the specific events you’re
            looking for in the high noise levels. What policy do you
            need to set and what setting should it have?

            a.  Set the Computer Configuration\\Policies\\Security
                Settings\\Local Policies\\Audit Policy\\Audit Account
                Management policy to Enabled, Audit Success.

            b.  Set the Computer Configuration\\Policies\\Security
                Settings\\Local Policies\\Audit Policy\\Audit Account
                Management policy to Enabled, Audit Failure.

            c.  ***Set the Computer Configuration\\Policies\\Security
                Settings\\Advanced Audit Policy Configuration\\Audit
                Policies\\Account Management\\Audit Distribution Group
                Management policy to Enabled, Audit Success.***

            d.  Computer Configuration\\Policies\\Security
                Settings\\Local Policies\\Audit Policy\\Audit Account
                Management policy to Enabled, Audit Failure.

        2.  What Group Policy setting do you need to enable in order to
            enable auditing of logoff events?

            a.  ***Computer Configuration\\Policies\\Windows
                Settings\\Security Settings\\Advanced Audit
                Policies\\Audit Logoff***

            b.  Computer Configuration\\Policies\\Windows
                Settings\\Security Settings\\Local Policies\\Audit Logon
                Events

            c.  User Configuration\\Policies\\Windows Settings\\Security
                Settings\\Advanced Audit Policies\\Audit Logon

            d.  User Configuration\\Policies\\Windows Settings\\Security
                Settings\\\\Local Policies\\Audit Logoff Events

        3.  What are the minimal Group Policy settings that you need to
            set in order to ensure that removable optical disks can be
            used to read data only? (Choose all that apply.)

            a.  Computer Configuration\\Policies\\Administrative
                Templates\\System\\Removable Storage Access\\Removable
                Disks: Deny Execute Access

            b.  Computer Configuration\\Policies\\Administrative
                Templates\\System\\Removable Storage Access\\ Removable
                Disks: Deny Write Access

            c.  ***Computer Configuration\\Policies\\Administrative
                Templates\\System\\Removable Storage Access\\CD and DVD:
                Deny Execute Access.***

            d.  ***Computer Configuration\\Policies\\Administrative
                Templates\\System\\Removable Storage Access\\CD and DVD:
                Deny Write Access.***

            e.  Computer Configuration\\Policies\\Administrative
                Templates\\System\\Removable Storage Access\\All
                Removable Storage Classes: Deny All Access

9.  411 Exam Reference Ch 3
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  You need to create a new primary forward lookup zone for
            Engineering.TreyReseach.net. The zone should have its data
            stored in Active Directory and be available to all domain
            controllers in the domain. What Windows PowerShell commands
            would you use?

            a.  Add-DnsServerPrimaryZone -Name
                ‘Engineering.TreyResearch.net’ -zone
                ‘engineering.treyresearch.net.dns’ -replication Domain

            b.  Add-DnsServerPrimaryZone -Name
                ‘Engineering.TreyResearch.net’ -zone
                ‘engineering.treyresearch.net.dns’ -replication Forest

            c.  ***Add-DnsServerPrimaryZone -Name
                ‘Engineering.TreyResearch.net’ -replication Domain***

            d.  Add-DnsServerPrimaryZone -Name
                ‘Engineering.TreyResearch.net’ -replication Forest

        2.  You need to create a new secondary reverse lookup zone for
            the TreyResearch.net, which uses 192.168.10.0 -
            192.168.10.255 for network addresses. The Primary zone is
            hosted by trey-dc-02 at 192.168.10.2. What Windows
            PowerShell commands would you use?

            a.  Add-DnsSecondaryZone -Name ‘TreyResearch.net’ -NetworkID
                “192.168.10.0/24” -Replication Domain -Master
                “trey-dc-02.treyresearch.net”

            b.  ***Add-DnsSecondaryZone -NetworkID “192.168.10.0/24”
                -Master 192.168.10.2 -Zone “10.168.192.in-addr.arpa”***

            c.  Add-DnsSecondaryZone -NetworkID “192.168.10.0/24”
                -Master 192.168.10.2 -Zone “0.10.168.192.in-addr.arpa”

            d.  Add-DnsSecondaryZone -NetworkID “192.168.10.0/24”
                -Master “trey-dc-02.treyresearch.net” -Zone
                “10.168.192.dns”

        3.  You are the enterprise administrator for Trey Research. Your
            domain name is TreyResearch.net, and your IPv4 address range
            is 192.168.10.0-192.168.10.255. Your IPv6 address range is
            2001:db8:10::/64. The primary domain controller for
            TreyResearch.net is trey-dc-02 and it hosts the Active
            Directory-integrated DNS. The Engineering department is
            migrating to use a new child domain,
            Engineering.TreyResearch.net, with a domain controller of
            trey-engdc-8. What commands would you use to delegate this
            domain?

            a.  ***Add-DnsServerZoneDelegation -Name TreyResearch.net
                \`\
                                            -ChildZoneName Engineering
                \`\
                                            -IPAddress
                192.168.10.8,2001:db8:10::8 \`\
                                            -NameServer
                trey-engdc-8.engineering.treyresearch.net***

            b.  Add-DnsServerZoneDelegation -Name
                Engineering.TreyResearch.net \`\
                                            -ChildZoneName Engineering
                \`\
                                            -IPAddress
                192.168.10.8,2001:db8:10::8 \`\
                                            -NameServer
                trey-dc-02.treyresearch.net

            c.  Add-DnsServerZoneDelegation -Name
                Engineering.TreyResearch.net \`\
                                            -ChildZoneName Engineering
                \`\
                                            -IPAddress
                192.168.10.8,2001:db8:10::8 \`\
                                            -NameServer
                trey-engdc-02.engineering.treyresearch.net

            d.  Add-DnsServerZoneDelegation -Name TreyResearch.net \`\
                                            -ChildZoneName Engineering
                \`\
                                            -IPAddress
                192.168.10.8,2001:db8:10::8 \`\
                                            -NameServer
                trey-dc-02.engineering.treyresearch.net

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  Which records do you need to create to support a new
            application server that uses both IPv4 and IPv6? (Choose all
            that apply.)

            a.  MX

            b.  SRV

            c.  ***A***

            d.  ***AAAA***

            e.  ***PTR***

            f.  CNAME

        2.  What command should you use to create a new name server
            record for ns13.treyresearch.net at 192.168.10.13?

            a.  ***Add-DnsServerResourceRecord -ZoneName
                “treyresearch.net” -NS -Name “.” -NameServer
                “ns13.treyresearch.net”***

            b.  Add-DnsServerResourceRecord -ZoneName “treyresearch.net”
                -NS -Name “ns13” -NameServer “ns13.treyresearch.net”

            c.  Add-DnsServerResourceRecord -Name “treyresearch.net” -NS
                -NameServer “ns13.treyresearch.net”

            d.  Add-DnsServerResourceRecord -ZoneName “treyresearch.net”
                -NS -Name “ns13.treyresearch.net” -NameServer “.”

        3.  How do you update the SOA resource record?

            a.  Use the Set-DnsServerResourceRecordSOA cmdlet

            b.  Use the Add-DnsServerResourceRecordSOA cmdlet

            c.  ***Use the DNS Manager console Properties of the zone***

            d.  Use the DNS Manager console Properties of the server

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  What command do you use to install *only* VPN and NAT and
            their management tools?

            a.  Enable-WindowsOptionalFeature -FeatureName RRAS -online

            b.  Add-WindowsFeature -Name RemoteAccess
                -IncludeManagementTools

            c.  ***Add-WindowsFeature -Name DirectAccess-VPN,Routing \`\
                -IncludeManagementTools***

            d.  Add-WindowsFeature -Name RRAS -IncludeManagementTools

        2.  You need to configure VPN to only support clients using the
            SSTP protocol. What changes do you need to make to the
            default VPN configuration in Windows Server 2012 R2?

            a.  Add the WAN Miniport for SSTP and set the maximum number
                of ports. Restart the RemoteAccess service.

            b.  Remove the PPTP WAN Miniport and set the maximum number
                of ports for PPTP to zero.

            c.  ***Clear Remote Access Connections for the WAN Miniport
                (PPTP), WAN Miniport (IKEv2), and WAN Miniport
                (L2TP).***

            d.  Enable demand-dial for the WAN Miniport (PPPOE).

        3.  You use DirectAccess for all Windows 8 and later remote
            clients, but you use VPN to support Windows 7 clients. You
            need to configure VPN to use IP addresses controlled by the
            Remote Access server. What settings do you need to make?
            (Choose all that apply.)

            a.  In the Routing And Remote Access console, select Assign
                Addresses Automatically.

            b.  In the Routing And Remote Access console, select Assign
                Addresses From A Static Pool.

            c.  In the DHCP Management console, create DHCP reservations
                for the IP addresses assigned to VPN clients.

            d.  ***In the DHCP Management console, create a DHCP
                exclusion for the IP addresses assigned to VPN
                clients.***

            e.  In the Remote Access Management console, select Assign
                Addresses Automatically.

            f.  ***In the Remote Access Management console, select
                Assign Addresses From A Static Address Pool***.

    4.  Lesson 4 Objective Overview
        ---------------------------

        1.  You are the network administrator for TreyResearch.net. You
            have deployed DirectAccess, and initial acceptance has been
            good, but now some users report that they cannot connect to
            the corporate network since the rollout, but have used VPN
            as a fallback. Other users report that they can connect via
            DirectAccess without problems. Upon investigation, all users
            reporting that they cannot connect are on desktop computers.
            What are the possible causes? (Choose all that apply.)

            a.  ***During initial setup, you configured DirectAccess
                with the Quick Start Wizard.***

            b.  During initial setup, you configured DirectAccess with
                the Remote Access Setup Wizard and cleared both the Use
                Force Tunneling and Enable DirectAccess for Mobile
                Computers Only check boxes in the DirectAccess Client
                Setup Wizard.

            c.  During initial setup, you configured DirectAccess with
                the Remote Access Setup Wizard, and added the Mobile
                Computers Security Group and the Home Computers Security
                Group to the Enabled For DirectAccess field.

            d.  All of the above.

            e.  None of the above.

        2.  You are the network administrator for TreyResearch.net. Your
            current network topology has a single-edge device that
            performs firewall and NAT functions. All client computers
            run Windows 8.1 and use VPN for remote access. Your ISP has
            provided you with a single, static public IP address. You
            have been asked to deploy DirectAccess for remote access,
            and a server has been identified for the project. The server
            has a single network adapter. What are the minimum steps you
            need to do before you can enable DirectAccess? (Choose all
            that are required.)

            a.  Purchase and install an additional network adapter for
                the identified server.

            b.  ***Install Windows Server 2012 R2 on the identified
                server.***

            c.  ***Install the Remote Access role as a role on the
                server.***

            d.  Purchase an additional static IP address from your ISP.

            e.  Decommission your existing edge device.

            f.  All of the above.

            g.  None of the above.

        3.  You are the network administrator for TreyResearch.net.
            After an initial test deployment of DirectAccess, which
            reported no issues, you have now deployed DirectAccess
            across all remote users. Users are reporting a significant
            slowing of Internet access. What are the possible causes?
            (Choose all that apply.)

            a.  During initial setup, you configured DirectAccess with
                the Quick Start Wizard.

            b.  ***During initial setup, you configured DirectAccess
                with the Remote Access Setup Wizard and selected Use
                Force Tunneling.***

            c.  During initial setup, you configured DirectAccess with
                the Remote Access Setup Wizard and selected Enable
                DirectAccess for Mobile Computers Only.

            d.  None of the above.

10. 411 Exam Reference Ch 4
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  When installing NPS as a RADIUS proxy, which NPS role
            services are required in Windows Server 2012 R2? (Choose all
            that apply.)

            a.  ***NPS***

            b.  Health Registration Authority

            c.  Host Credential Authorization Protocol

            d.  Routing and Remote access service (RRAS)

        2.  Certificates with which purposes can be used for mutual
            authentication of NPS and client computers? (Choose all that
            apply.)

            a.  All Purpose certificates

            b.  ***Server authentication certificates***

            c.  Root certificates

            d.  ***Client authentication certificates***

        3.  When you configure NPS as a RADIUS proxy, it means the
            following:

            a.  It acts as a RADIUS client, authenticating all
                connection requests locally and notifying the RADIUS
                server group that the request should have access.

            b.  It acts as a member of a RADIUS server group that
                accepts requests from RADIUS clients and authenticates
                them.

            c.  It acts as a member of a RADIUS server group that
                accepts authenticated requests from RADIUS clients and
                assigns remote computers to a network.

            d.  ***It acts as a RADIUS client, forwarding connection
                requests to a RADIUS server group for authentication and
                authorization.***

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  The connection request policy supports which of the
            following conditions? (Choose all that apply.)

            a.  User Groups

            b.  ***User Name***

            c.  ***NAS Port Type***

            d.  MS Service Class

        2.  You have a Windows Server 2012 R2 server (RAD1) acting as a
            RADIUS proxy and a RADIUS server group with a single Windows
            Server 2012 server (RAD2) as a RADIUS server in it. You need
            to configure a second RADIUS server to distribute the load.
            What should you do?

            a.  Deploy a second Windows Server 2012 R2 server (RAD3) and
                install the Routing and Remote access service (RRAS) on
                it. Export the configuration from RAD1 and import it to
                RAD3.

            b.  Deploy a second Windows Server 2012 server (RAD3) and
                install RRAS on it. Export the configuration from RAD2
                and import it to RAD3.

            c.  ***Deploy a second Windows Server 2012 R2 server (RAD3)
                and install NPS Server on it. Export the configuration
                from RAD2 and import it to RAD3.***

            d.  Deploy a second Windows Server 2012 server (RAD3) and
                install NPS on it. Export the configuration from RAD1
                and import it to RAD3.

        3.  You need to improve the security of your remote access and
            want to limit the protocols that are used to connect to the
            RADIUS server. What condition could you use to limit the
            protocols?

            a.  ***Use a Tunnel Type condition in the connection request
                policy.***

            b.  Use a Framed Protocol condition in the connection
                request policy.

            c.  Use an Authentication Type condition in the network
                policy.

            d.  Use an Allowed EAP Types condition in the network
                policy.

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  User1 has been on vacation for a week, with his laptop
            turned off. When he attempted to connect via modem to the
            Remote Access dial-in bank on day four of the vacation, his
            dial-in attempt was rejected. However, when he returns home
            three days later, he initially has a problem when he logs on
            to his laptop and attempts to connect to the network
            remotely. When he returns to the office, all is well,
            although his initial logon seems rather slow. When he goes
            home that night, he is again able to connect to the network.
            User1 is authorized for dial-up, and NAP policies are in
            place for both internal network connections and remote
            connections. What was a possible cause of the problem?

            a.  The connection request policy for dial-up connections
                has a condition on the Called Station ID that limits
                callers to the local area code.

            b.  ***The health policy for dial-up and VPN access requires
                that all client SHV checks must pass.***

            c.  The health policy for internal network access requires
                that all client SHV checks must pass.

            d.  The network connection policy for dial-up connections is
                set to enable access.

        2.  What configuration changes do you need to make on client
            computers to support NAP?

            a.  Set the Network Access Protection Agent to Automatic.

            b.  Enable the DHCP Quarantine Enforcement Agent.

            c.  Enable the EAP Quarantine Enforcement Agent.

            d.  Use Group Policy to set the Turn On Security Center
                (Domain PCs Only) policy to Enabled.

            e.  A, B, D.

            f.  B, C, D.

            g.  ***All of the above.***

        3.  When you configure NPS for DHCP, you configure the network
            policy to enforce the health policy. What settings do you
            need make in the network policy?

            a.  If the client SHV fails one or more SHV checks, deny
                access.

            b.  If the client SHV fails one or more SHV checks, grant
                access only for EAP clients.

            c.  If the client SHV passes one or more SHV checks, deny
                access.

            d.  ***If the client SHV passes one or more SHV checks,
                enable access.***

11. 411 Exam Reference Ch 5
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  What tool or command do you use to create a Managed Service
            Account?

            a.  Computer management with the Users folder of Local Users
                and Groups

            b.  Active Directory Users and Computers

            c.  ***New-ADServiceAccount***

            d.  Install-ADServiceAccount

            e.  Add-ADComputerServiceAccount

        2.  What command should you use to add a gMSA on a computer?

            a.  Add-ADGroupMember

            b.  ***Install-ADServiceAccount***

            c.  Add-ADServiceAccount

            d.  Install-ADComputerServiceAccount

        3.  You want to use a virtual account for the TestService on
            computer Server1. What commands or tools would you use?
            (Choose all that apply.)

            a.  Set-Service -computername Server1

            b.  ***Services.msc***

            c.  Lusrmgr.msc

            d.  Add-ADComputerServiceAccount

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  What commands should you use to prepare a clone of domain
            controller trey-dc-03? (Choose all that apply.)

            a.  ***Get-ADDCCloningExcludedApplicationList
                -GenerateXML***

            b.  Get-ADDCCloningAllowedList -GenerateXML

            c.  ***Get-ADComputer trey-dc-03 |
                Foreach-Object  {Add-ADGroupMember -Identity “Cloneable
                Domain Controllers” \$\_.SamAccountName }***

            d.  Get-ADDomainController trey-dc-03 |
                Foreach-Object  {Add-ADGroupMember -Identity “Cloneable
                Domain Controllers” \$\_.SamAccountName }

            e.  ***New-ADDCCloneConfigFile***

        2.  Server trey-dc-02 hosts all the forest-wide operations
            master roles. You want to transfer the roles to server
            trey-dc-04, and are logged in to trey-dc-04 with an account
            that is a member of the Schema Admins group. What commands
            can you use to transfer the roles?

            a.  Move-ADDirectoryServerOperationMasterRole -Identity
                trey-dc-02 -OperationMasterRole
                SchemaMaster,InfrastuctureMaster

            b.  ***Move-ADDirectoryServerOperationMasterRole -Identity
                trey-dc-04 -OperationMasterRole
                SchemaMaster,DomainNamingMaster***

            c.  Move-ADDirectoryServerOperationMasterRole -Identity
                trey-dc-02 -OperationMasterRole
                SchemaMaster,DomainNamingMaster

            d.  Move-ADDirectoryServerOperationMasterRole -Identity
                trey-dc-04 -OperationMasterRole
                SchemaMaster,InfrastructureMaster

        3.  What command can you use to stage an RODC?

            a.  New-ADDSDomainControllerAccount

            b.  Install-ADDSDomainController

            c.  ***Add-ADDSReadOnlyDomainControllerAccount***

            d.  New-ADDSReadOnlyDomainControllerAccount

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  What command or tool do you use to enable the Active
            Directory Recycle Bin?

            a.  Ntdsutil.exe

            b.  Active Directory Users and Computers

            c.  Active Directory Sites and Services

            d.  ***Enable-ADOptionalFeature***

        2.  What tools or commands do you use to create and mount an
            Active Directory snapshot? (Choose two.)

            a.  ***ntdsutil snapshot “activate instance ntds” create
                “list all” quit quit***

            b.  ntdsutil create snapshot “activate instance ntds” “list
                all” quit quit

            c.  ***Ntdsutil snapshot “activate instance ntds” “list all”
                “mount 2” quit quit***

            d.  Ntdsutil snapshot “activate instance ntds” “mount 2”
                quit quit

        3.  You accidentally delete a user account in Active Directory.
            What can you do to correct the problem and provide the user
            full access to their files?

            a.  Do a non-authoritative restore of Active Directory.

            b.  Enable the Active Directory Recycle Bin and restore the
                deleted user object.

            c.  Re-create the user with the exact same name, email, and
                SAM account name.

            d.  ***Restore the deleted object with Ldp.exe.***

    4.  Lesson 4 Objective Overview
        ---------------------------

        1.  What commands or tools would you use to set a default
            lockout setting?

            a.  From an elevated prompt on the PDC Emulator,
                type **GPEdit.msc**.

            b.  From an elevated prompt on the client computer,
                type **GPEdit.msc**.

            c.  ***From an elevated Windows PowerShell prompt, run
                Set-ADDefaultDomainPasswordPolicy.***

            d.  From an elevated Windows PowerShell prompt, run
                Set-ADAccountExpiration.

        2.  Some users are reporting that they can’t log on to the
            domain. You suspect a Kerberos issue. What settings can you
            change to temporarily alleviate the problem?

            a.  ***Set the Default Domain Policy for Maximum Tolerance
                For Computer Clock Synchronization to 10.***

            b.  Set the Default Domain Policy for Maximum Tolerance For
                Computer Clock Synchronization to 0.

            c.  Change the Enforce User Logon Restrictions policy to
                Disabled.

            d.  Change the Computer Configuration\\Policies\\Windows
                Settings\\Security Settings\\Account Policies\\Account
                Lockout Policy\\Lockout Threshold to 0.

        3.  Remote sales users complain that they frequently need to run
            with a local account on their laptops, but they are still
            subject to the Domain Password Policy that requires them to
            change their password every 40 days. Upon consultation with
            management, there is agreement that a 70-day policy for
            salespeople is appropriate. How would you implement this new
            policy? (Choose all that apply.)

            a.  Create a Sales OU and then use the
                Set-ADAccountExpiration cmdlet.

            b.  Create a Sales OU and then use the
                Set-ADFineGrainedPasswordPolicy cmdlet

            c.  Create a Sales security group and then use the
                Set-ADFineGrainedPasswordPolicy cmdlet.

            d.  ***Create a Sales security group and then use the
                New-ADFineGrainedPasswordPolicy and
                Add-ADFineGraintPasswordPolicySubject cmdlets.***

12. 411 Exam Reference Ch 6
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  You need to configure training lab computers to allow users
            to log on with their own accounts, but still provide a
            consistent look and experience for the lab, regardless of
            departments the users are normally in. What Group Policy
            settings should you use?

            a.  Set Computer Configuration/Policies/Administrative
                Templates/System/Group Policy/Configure User Group
                Policy Loopback Processing Mode to Merge Mode. and
                configure the Computer Configuration/Preferences/Windows
                Settings and Control Panel Settings.

            b.  Set Computer Configuration/Policies/Administrative
                Templates/System/Group Policy/Configure User Group
                Policy Loopback Processing Mode to Merge Mode, and
                configure the User Configuration/Preferences/Windows
                Settings and Control Panel Settings.

            c.  ***Set Computer Configuration/Policies/Administrative
                Templates/System/Group Policy/Configure User Group
                Policy Loopback Processing Mode to Replace Mode, and
                configure the Computer Configuration/Preferences/Windows
                Settings and Control Panel Settings.***

            d.  Set Computer Configuration/Policies/Administrative
                Templates/System/Group Policy/Configure User Group
                Policy Loopback Processing Mode to Replace Mode, and
                configure the User Configuration/Preferences/Windows
                Settings and Control Panel Settings.

        2.  How do you force a remote Group Policy update on the
            Computer Configuration of Trey-Srv-12?

            a.  Force-GPUpdate -Computer -Sync -Target Trey-Srv-12

            b.  Force-GPUpdate -Computer Trey-Srv-12 -Target Computer

            c.  Invoke-GPUpdate -Computer -Sync -Target Trey-Srv-12

            d.  ***Invoke-GPUpdate -Computer Trey-Srv-12 -Target
                Computer***

        3.  You are the network administrator for TreyResearch.net. You
            have to enforce special policies on the Engineering OU in
            which the users work with highly sensitive information while
            ensuring that the Domain Password Policy is used. What Group
            Policy settings should you use?

            a.  ***Configure Block Inheritance on the OU and set the
                Domain Password Policy to Enforced.***

            b.  Configure Block Inheritance on the Domain and configure
                an OU Password Policy.

            c.  Configure Block Inheritance on the Domain, and add a
                link to the Domain Password Policy to the OU.

            d.  Configure Block Inheritance off at the OU, and set the
                Domain Password Policy to Enforced.

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  You need to ensure that the ABC software application is
            deployed to all users in the HR department. The installer
            for ABC is AbcInstall.msi. What steps should you take?
            (Choose all that apply.)

            a.  ***Create a GPO specifically for Software
                Distribution.***

            b.  Use the Default Domain Policy and add Software
                Distribution to the policy.

            c.  ***Create a distribution point of C:\\Software on
                Trey-Srv-12. Create a share of Software and give Read
                privileges to all HR users.***

            d.  Publish the software package to all HR users.

            e.  ***Assign the software package to all HR users.***

            f.  Configure the GPO to use c:\\Software\\AbcInstall.msi as
                the Package.

            g.  ***Configure the GPO to use
                \\\\Trey-Srv-12\\Software\\AbcInstall.msi as the
                Package.***

        2.  You need to limit the HR Device Use policy that is linked to
            the Domain. The policy should apply only to HR Users who are
            part of the HR OU. What should you do?

            a.  Use the Set-GPPermission cmdlet with the -Replace and
                -Target parameters to limit the GPO to HR Users only.

            b.  Use the Set-GPLink cmdlet with the -Enforced and the
                -Target parameters to link the HR Device Policy to the
                Domain.

            c.  Configure Property Filters to block the Computer
                Configuration container.

            d.  ***Configure Security Filtering on the HR Device Policy
                by removing Authenticated Users and adding HR Users.***

        3.  You need to ensure that GPOs are consistent across the
            domain and that new versions of Administrative Templates are
            fully propagated. What should you do?

            a.  Configure the Startup script to include Gpupdate /force.

            b.  Configure Logon script to include Gpupdate /force.

            c.  ***Configure a central store of Administrative templates
                and copy updated templates to that store.***

            d.  Configure the Startup scripts to copy the .admx files to
                \\\\trey-dc-02\\Policies, where trey-dc-02 holds the PDC
                Emulator role.

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  After thorough troubleshooting of problems with the behavior
            of client computers in the TreyResearch.net domain, you
            determine that the Default Domain Policy has significant
            issues and the best way to correct the problems is to
            restore the default GPO. What command should you use?

            a.  Invoke-GPO | New-GPO -Name “Default Domain Policy”

            b.  New-GPO -Name “Default Domain Policy” -StarterGPOName
                &lt;*startername*&gt;

            c.  ***Dcgpofix /ignoreschema /target Domain***

            d.  Dcgpofix /ignoreschema /target DC

        2.  You need to restore the Client Backup GPO from the most
            recent backup. What command should you use?

            a.  Restore-GPO -Name “Client Backup GPO”

            b.  Restore-GPO -All -Path \\\\Server\\BackupGPOs

            c.  ***Import-GPO -BackupGpoName “Client Backup GPO”
                -TargetName “Restored Client Backup GPO” -Path
                \\\\Server\\BackupGPOs***

            d.  Restore-GPO -Name “Client Backup GPO” -Path
                \\\\Server\\BackupGPOs

        3.  You want to copy the settings from the TreyResearch.net
            “Client Backup GPO” to the “ClientBackupGPO” in the
            TailspinToys.com domain. What command should you use?

            a.  Use the GPMC’s Restore From Backup command to restore
                the GPO in the TailspinToys.com domain, specifying the
                Migration Table.

            b.  Use the GPMC’s Restore From Backup command to restore
                the GPO from the TreyResearch.net domain.

            c.  Use the GPMC’s Copy command to copy the “Client Backup
                GPO” from the TreyResearch.net domain and then paste the
                GPO into the TailspinToys.com domain.

            d.  ***Use the GPMC’s Import Settings command to import the
                settings from the most recent backup of the “Client
                Backup GPO” from the TreyResearch.net domain into the
                “ClientBackupGPO” in the TailspinToys.com domain,
                specifying the Migration Table.***

    4.  Lesson 4 Objective Overview
        ---------------------------

        1.  You want to provide all users in the Training Department
            with the same default printer. It should not delete any
            existing printers. How can you do that?

            a.  Create a GPO linked to the Training OU and specify a
                Printer preference with the Replace action.

            b.  Create a GPO linked to the Training OU and specify a
                Printer preference with the Create action.

            c.  ***Create a GPO linked to the Training OU and specify a
                Printer preference with the Update action.***

            d.  Create a GPO linked to the Training Department security
                group and specify a Printer preference with the Create
                action.

        2.  You need to provide a default power plan for all laptop
            users running Windows 8. The plan should be applied only to
            laptop users. How can you do that?

            a.  Create a GPO linked to the Win8 OU and specify a User
                Configuration Power Options preference with the Create
                action. Specify item-level targeting of a Battery
                Present.

            b.  Create a preference linked to the Win8 OU and specify a
                Computer Configuration Power Options GPP with the Create
                action. Specify item-level targeting of a Portable
                Computer.

            c.  Create a preference linked to the Win8 OU and specify a
                User Configuration Power Options GPP with the Update
                action. Specify item-level targeting of a Portable
                Computer.

            d.  ***Create a GPO linked to the Win8 OU and specify a
                Computer Configuration Power Options preference with the
                Update action. Specify item-level targeting of a Battery
                Present.***

        3.  You need to ensure that all domain computers currently on
            the local network are using a special version of the Hosts
            file. You create a network share of \\\\server\\ConfigFiles
            that has Read permissions for Everyone. You configure a
            Hosts GPO and link it to the Domain. What settings do you
            need to add to the GPO?

            a.  ***Configure the Computer Configuration Files preference
                to have a source file of \\\\server\\ConfigFiles\\hosts
                and a target of
                C:\\Windows\\System32\\Drivers\\Etc\\Hosts. Set the
                attributes of the file to read-only and set the IP
                Address item-level targeting of the local network.***

            b.  Configure the User Configuration Files preference to
                have a source file of \\\\server\\ConfigFiles\\hosts and
                a target of C:\\Windows\\System32\\Drivers\\Etc\\Hosts.
                Set the attributes of the file to read-only and set the
                IP Address item-level targeting of the local network.

            c.  Configure the Computer Configuration Files preference to
                have a source file of \\\\server\\ConfigFiles\\hosts and
                a target of C:\\Windows\\System32\\Drivers\\Etc\\Hosts.
                Set the attributes of the file to read-only and set the
                Domain item-level targeting of the target domain.

            d.  Configure the User Configuration Files preference to
                have a source file of \\\\server\\ConfigFiles\\hosts and
                a target of C:\\Windows\\System32\\Drivers\\Etc\\Hosts.
                Set the attributes of the file to read-only and set the
                Domain item-level targeting of the target domain.

13. 412 Exam Reference Ch 1
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  You have configured an NLB cluster of 10 web servers running
            Windows Server 2012 R2 and IIS. You discover that web
            traffic destined for the NLB cluster is distributed very
            unevenly among the individual NLB cluster members. Port rule
            settings for each node have not been modified from the
            defaults. You want to ensure that client web requests are
            distributed as evenly as possible among all 10 nodes in the
            NLB cluster. Which setting should you enable?

            a.  ***Affinity-None***

            b.  Affinity-Single

            c.  Affinity-Network

            d.  Load Weight

        2.  Your network includes an NLB cluster that is used to support
            an e-commerce site. Use of the site is growing. Whenever you
            add a new node to the NLB cluster, you receive complaints
            from customers that items in their shopping carts disappear.
            You want to reduce the likelihood that users will experience
            this problem in the future. What should you do?

            a.  Modify the Load Weight settings

            b.  Enable the Single Host filtering mode

            c.  Enable the Multiple Host filtering mode

            d.  ***Modify the Timeout settings***

        3.  You have configured an NLB cluster. You want to designate a
            particular server within the NLB cluster to handle all the
            traffic that is not caught by any port rule. What should you
            do?

            a.  Modify the Load Weight setting

            b.  Enable the Single Host filtering mode

            c.  ***Configure the Host Priority settings***

            d.  Configure a Handling Priority

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  You are designing storage for a failover cluster on two
            servers running Windows Server 2012 R2. You want to
            provision disks for the cluster that will enable you to
            create a storage pool for it. Which of the following sets of
            physical disks could you use to create a storage pools for
            the failover cluster?

            a.  Three individual disks in an iSCSI storage array without
                any RAID configuration

            b.  Four disks in an iSCSI storage array configured as a
                RAID 5

            c.  ***Three individual disks in a SAS storage array without
                any RAID configuration***

            d.  Four disks in a SAS storage array configured as a RAID 5

        2.  You are an IT administrator for Adatum.com. The Adatum.com
            network includes 50 servers and 750 clients. Forty of the
            servers are virtualized. To provide storage for all servers,
            the Adatum.com network uses an iSCSI-based SAN. You are
            designing storage for a new virtual machine hosted in a
            failover cluster. Your priorities for the storage are to
            simplify management of SAN storage and to minimize downtime
            in case of node failure.\
            What should you do?

            a.  Use Server Manager to create a storage pool

            b.  ***Keep VM storage on a cluster shared volume***

            c.  Provision volumes from an external Serial Attached SCSI
                (SAS) disk array instead of the iSCSI SAN

            d.  Assign a mirrored volume to the cluster

        3.  Your network includes an Active Directory domain named
            Contoso.com. You have purchased four servers that you plan
            to configure in a failover cluster. You want the failover
            cluster to run even if two of the nodes fail. What should
            you do?

            a.  ***Adjust the Quorum configuration***

            b.  Configure the cluster storage from a storage pool

            c.  Configure Cluster Aware Updating

            d.  Add the cluster disks to cluster-shared volumes

    3.  Lesson 3 Objective Overview
        ---------------------------

        1.  You work as a network administrator for Adatum.com. The
            Adatum.com network includes 25 servers running Windows
            Server 2012 R2 and 400 clients running Windows 8.1.\
            You want to create a failover cluster to support a file
            share used by a resource-intensive application. Your
            priorities for the failover cluster are to prevent
            file-handling errors in the event of failover and to
            maintain high performance as the usage of the application
            grows. Which role and storage type should you configure for
            the failover cluster? (Choose two. Each answer represents
            part of the solution.)

            a.  Configure as the role for the failover cluster a File
                Server for general use.

            b.  ***Configure as the role for the failover cluster a
                Scale-Out File Server.***

            c.  Store the share on an NTFS volume provisioned from
                shared storage. Do not add the volume to Cluster-shared
                volumes.

            d.  ***Store the share on a Cluster Shared Volume.***

        2.  You work as a network administrator for Fourth Coffee, Inc.
            The Fourthcoffee.com network spans offices in five cities in
            Australia. All servers in the network are running Windows
            Server 2012 R2 and all clients are running Windows 8.1.

        3.  You want to create a failover cluster to support a new file
            share that will be used by members of the marketing team in
            all branch offices. Your requirements for the failover
            cluster and the file share in general are to minimize
            downtime if a node fails, to minimize storage space needed
            for the share, to reduce or eliminate the possibility of
            file conflicts, and to minimize the amount of data
            transferred over WAN links.\
            How should you configure the failover cluster and file
            server? (Choose all that apply.)

            a.  ***Configure as the role for the failover cluster a File
                Server for general use.***

            b.  Configure as the role for the failover cluster a
                Scale-Out File Server.

            c.  ***Enable Data Deduplication on the file share.***

            d.  ***Enable BranchCache on the file share.***

        4.  You want to create a two-node failover cluster to provide
            high availability for a virtual machine. The virtual machine
            will host an important line-of-business (LOB) application
            used often by members of your organization throughout the
            day. You want to configure VM monitoring of the application
            so that the virtual machine will restart if the application
            is found to be in a critical state and will fail over to the
            other node if the application still is in a critical state
            after the system restart.\
            Which of the following is not a requirement of meeting this
            goal?

            a.  The host Hyper-V server needs to be running Windows
                Server 2012 or Windows Server 2012 R2.

            b.  The guest VM needs to be running Windows Server 2012 or
                Windows Server 2012 R2.

            c.  ***The host and the guest need to be members of the same
                domain.***

            d.  The guest VM needs to have enabled the firewall rules in
                the Virtual Machine Monitoring group.

        5.  You have configured high availability for a cluster-aware
            application named ProseWareApp in a 2-node failover cluster
            named Cluster1. The physical nodes in Cluster1 are named
            Node1 and Node2; they are both running Hyper-V in Windows
            Server 2012 R2. Node1 is currently the active node for
            ProseWareApp.\
            You want to configure Cluster1 to perform critical Windows
            Updates with a minimum of administrative effort and a
            minimum of downtime for ProseWareApp users. What should you
            do?

            a.  Drain the roles on Node1 and then start Windows Update
                on Node1.

            b.  In Server Manager on Node1, right-click Cluster1 and
                select Update Cluster.

            c.  ***Configure Cluster-Aware Updating to add the CAU
                clustered role to Cluster1 with self-updating mode
                enabled.***

            d.  Configure Task Scheduler to run Windows Update daily on
                Node1 outside of business hours.

    4.  Lesson 4 Objective Overview
        ---------------------------

        1.  You are a network administrator for Contoso.com. You have
            recently upgraded all of your servers to Windows Server 2012
            R2. Your manager has indicated that he wants to start
            testing the live migration feature in a non-clustered
            environment so that you can eventually take advantage of
            this functionality in production.\
            You create a small test network consisting of two Hyper-V
            servers running Windows Server 2012 R2 named Host1 and
            Host2. The hardware and software settings on these two
            physical servers exactly match those of two physical servers
            in your production network. Host1 is currently hosting a
            guest VM named VM1.\
            You enable live migration on both servers and configure
            CredSSP as the authentication protocol. You then log on
            locally to Host1 and initiate a live migration of VM1 from
            Host1 to Host2. You receive an error message indicating that
            the VM is using processor-specific features not supported on
            the destination physical computer. You want to perform a
            live migration successfully in your test network so that you
            will know what is required to use this feature successfully
            in production. What should you do?

            a.  Configure constrained delegation for Host1 and Host2.

            b.  Disable VM monitoring on VM1.

            c.  Configure Kerberos as the authentication protocol on
                Host1 and Host2.

            d.  ***On Host1, run: Set-VMProcessor VM1
                -CompatibilityForMigrationEnabled \$true***

        2.  You are a network administrator for Adatum.com. You have
            recently upgraded all of your servers to Windows Server 2012
            R2. Your manager has indicated that she wants to start
            testing the live migration feature so that you can
            eventually take advantage of this functionality in
            production.\
            You create a small test network consisting of two Hyper-V
            servers running Windows Server 2012 R2 named VHost1 and
            VHost2. The hardware and software settings on these two
            physical servers exactly match those of two physical servers
            in your production network. VHost2 is currently hosting a
            guest VM named VM2.\
            You enable live migration on both servers and configure
            Kerberos as the authentication protocol. You then log on
            locally to Host1 and initiate a live migration of VM1 from
            VHost2 to VHost1. The live migration fails, and you receive
            an error indicating “No credentials are available in the
            security package.” You want to perform a live migration
            successfully in your test network so that you will know what
            is required to use this feature successfully in production.
            You also want to initiate live migrations when you are not
            logged on to the source host server. What should you do
            next?

            a.  ***Configure constrained delegation for VHost1 and
                VHost2.***

            b.  Disable VM monitoring on VM2.

            c.  Configure CredSSP as the authentication protocol on
                VHost1 and VHost2.

            d.  On VHost1, run: Set-VMProcessor VM2
                -CompatibilityForMigrationEnabled \$true

        3.  You are a network administrator for Proseware.com. One of
            your servers is named HV1 and is running Windows Server 2012
            R2 with the Hyper-V role. HV1 is hosting 10 virtual machines
            on locally attached storage. It is not a member of any
            domain. The available storage used by the 10 guest VMs on
            HV1 is close to being depleted. At the current rate of
            growth, the current physical disks attached to HV1 will run
            out of space in three months. You want to provide more space
            to your guest VMs. How can you solve the storage problem
            with a minimum financial expense and minimum impact on
            users?

            a.  Perform a quick migration of the VMs on HV1 to a new
                server with more space.

            b.  Perform a live migration of the VMs on HV1 to a new
                server with more space.

            c.  ***Perform a storage migration of the VMs on HV1 to a
                new storage array with ample storage space.***

            d.  Attach a new storage array with ample storage space to
                HV1 and expand the VHD files used by the guest VMs.

14. 412 Exam Reference Ch 2
    =======================

    1.  Lesson 1 Objective Overview
        ---------------------------

        1.  You are a network administrator for Proseware, which has a
            main office and a branch office. The company network
            consists of a single Active Directory domain, Proseware.com.
            All servers are running Windows Server 2012 R2 and all
            clients are running Windows 8.1. You configure a file server
            at the main office as a BranchCache content server and
            configure two servers at the branch office as hosted cache
            servers. You create a new Group Policy Object (GPO) for the
            branch office. Which of the following Group Policy settings
            do you need to configure in the GPO to enable the clients at
            the branch office to use the hosted cache servers? (Choose
            all that apply.)

            a.  Turn on BranchCache

            b.  Set BranchCache Hosted Cache Mode

            c.  Enable Hosted Cache Discovery by Service Connection
                Point

            d.  Configure Hosted Cache Servers

        2.  You work as a network administrator for Adatum.com. Adatum
            has a main office and a branch office. You configure a file
            server named FS1 in the main office as a BranchCache content
            server and you configure a server named HC1 at the branch
            office as a hosted cache server. You have selected file
            shares on FS1 that you want to preload on HC1. You now want
            to generate hashes for these file shares to stage the data
            for a cache package. Which cmdlet should you run?

            a.  Publish-BCFileContent

            b.  Publish-BCWebContent

            c.  Export-BCCachePackage

            d.  Import-BCCachePackage

        3.  You are a network administrator for Proseware, which has a
            main office and a branch office. The company network
            consists of a single Active Directory domain, Proseware.com.
            All servers are running Windows Server 2012 R2, and all
            clients are running Windows 8.1. You configure a file server
            at the main office as a BranchCache content server. You now
            want to configure clients at the branch office for
            BranchCache. You create a new GPO for the branch office.
            Which of the following Group Policy settings do you need to
            configure in the GPO to enable the clients for BranchCache?
            (Choose all that apply.)

            a.  Turn On BranchCache

            b.  Set BranchCache Distributed Cache Mode

            c.  Set BranchCache Hosted Cache Mode

            d.  Configure BranchCache for Network Files

    2.  Lesson 2 Objective Overview
        ---------------------------

        1.  You are a network administrator for Adatum.com. The
            Adatum.com network consists of a single domain that spans
            branch offices in New York and London. Within the Adatum.com
            domain, the users and computers within the New York office
            are contained in an OU named US; the users and computers
            within the London office are contained in an OU named UK.
            You want to be able to classify data as originating from
            either the New York office or the London office. You create
            a resource property named Country/Region and configure the
            suggested values “US” and “UK.” You want administrators in
            both the New York and London offices to see the
            Country/Region resource property appear on the
            Classification tab of files and folder properties. What
            should you do next?

            a.  Run the Update-FSRMClassificationPropertyDefinition
                cmdlet.

            b.  Enable the Country/Region resource property.

            c.  Create a classification rule.

            d.  Add the Country/Region property to a resource property
                list.

            e.  2\. Your organization’s network consists of a single Active Directory
                domain. All servers are running Windows Server 2012 R2 and all clients
                are running Windows 8.1.

        2.  You want to enable claims-based access authorization for
            users in your domain. Which of the following steps should
            you take to take to achieve this goal?

            a.  Enable the policy setting KDC Support for Claims,
                Compound Authentication and Kerberos Armoring in a GPO
                at the domain controllers OU level.

            b.  Enable the policy setting KDC Support for Claims,
                Compound Authentication and Kerberos Armoring in a GPO
                at the domain level.

            c.  Enable the policy setting Kerberos Support for Claims,
                Compound Authentication and Kerberos Armoring in a GPO
                at the domain controllers OU level.

            d.  Enable the policy setting Kerberos Support for Claims,
                Compound Authentication and Kerberos Armoring in a GPO
                at the domain level.

        3.  You are a network administrator for Proseware.com. The
            Proseware.com network consists of a single Active Directory
            domain. All servers in the network are running Windows
            Server 2012 R2 and all clients are running Windows 8.1 On a
            file server named FileSrv1, your manager has created five
            new file shares named Finance, Marketing, Sales, Operations,
            and Legal. On each share, your manager has assigned Full
            Control to Authenticated Users for both the NTFS and share
            permissions. Your manager now asks you to configure
            permissions to the contents of each departmental file share
            so that Full Control access is restricted to members of the
            corresponding department and that no other users are allowed
            any access. Your manager also wants you to ensure that files
            within each departmental share can be traced to their origin
            even when they are moved from their original share location.
            Which of the following steps will allow you to meet these
            stated goals? (Choose two. Each answer represents part of
            the solution.)

            a.  On each new shared folder, remove all currently
                configured NTFS permissions and then grant Full Control
                NTFS permissions to a security group that includes all
                the members of the corresponding department only.

            b.  On each new shared folder, remove all currently
                configured share permissions and then grant Full Control
                share permissions to a security group that includes all
                the members of the corresponding department only.

            c.  On each department’s shared folder, configure a
                Department classification property value that
                corresponds to the name of the department.

            d.  On each department’s shared folder, apply a central
                access policy that assigns to members of the appropriate
                department Full Control permissions on files assigned
                with a matching Department value classification.
